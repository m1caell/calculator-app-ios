//
//  ViewController.swift
//  calculator-app
//
//  Created by Pablo Trindade on 26/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var displayValue: String = "0"
    
    
    @IBAction func pressNumber(_ sender: UIButton) {
        refreshDisplay.text = "\(refreshDisplay.text!)\(sender.currentTitle!)"
    }
    
    @IBAction func pressOperator(_ sender: UIButton) {
        print(sender.currentTitle as Any)
    }
    
    @IBAction func clearDisplay(_ sender: UIButton) {
        refreshDisplay.text = ""
    }
    
    @IBOutlet weak var refreshDisplay: UILabel!
}

