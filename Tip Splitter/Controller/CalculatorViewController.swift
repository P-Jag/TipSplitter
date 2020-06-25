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
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPtcButton.isSelected = false
        tenPtcButton.isSelected = false
        twentyPtcButton.isSelected = false
        
        sender.isSelected = true
        
        let btnTitle = sender.currentTitle!
        let btnWithoutPercentage = String(btnTitle.dropLast())
        let btnTitleAsNumber = Double(btnWithoutPercentage)!
        
        tip = btnTitleAsNumber / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        persons = Int(sender.value)
        splitNumberLabel.text = String(persons)
        
        sender.maximumValue = 12.0
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print(tip)
        print(persons)
    }
    
}

