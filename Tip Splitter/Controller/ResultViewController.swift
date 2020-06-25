//
//  ResultViewController.swift
//  Tip Splitter
//
//  Created by Paweł Jagła on 24/06/2020.
//  Copyright © 2020 Paweł Jagła. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingLabel: UILabel!
    
    var result = "0.0"
    var tip = 10
    var split = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = "\(result)"
        settingLabel.text = "Split between \(split) people with \(tip)% tip"
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
