//
//  CalculatorViewController.swift
//  Tip Splitter
//
//  Created by Paweł Jagła on 24/06/2020.
//  Copyright © 2020 Paweł Jagła. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPtcButton: UIButton!
    @IBOutlet weak var tenPtcButton: UIButton!
    @IBOutlet weak var twentyPtcButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var persons = 2
    var totalBill = 0.0
    var finalResult = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPtcButton.isSelected = false
        tenPtcButton.isSelected = false
        twentyPtcButton.isSelected = false
        
        sender.isSelected = true
        
        let btnTitle = sender.currentTitle!
        let btnWithoutPercentage = String(btnTitle.dropLast())
        let btnTitleAsNumber = Double(btnWithoutPercentage)!
        
        tip = btnTitleAsNumber / 100
        
        billTextField.endEditing(true) // turn off keyboard
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        persons = Int(sender.value)
        splitNumberLabel.text = String(persons)
        
        sender.maximumValue = 12.0
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
        
        if bill != "" {
            totalBill = Double(bill)!
            let result = totalBill * (1 + tip) / Double(persons)
            finalResult = String(format: "%.2f", result)
        }
        
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.result = finalResult
            destinationVC.tip = Int(tip * 100)
            destinationVC.split = persons
        }
    }
    
}

