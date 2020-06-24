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
    
    @IBAction func tipChanged(_ sender: UIButton) {
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        print("Number of persons changed")
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        print("Bill is splitted now")
    }
    
}

