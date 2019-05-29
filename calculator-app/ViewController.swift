//
//  ViewController.swift
//  calculator-app
//
//  Created by Pablo Trindade on 26/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var displayValue: String?
    var valueA: String?
    var valueB: String?
    var currentOperator: Operators?
    let calulator = Calculator()
    
    @IBAction func pressNumber(_ sender: UIButton) {
        refreshDisplay.text = "\(refreshDisplay.text!)\(sender.currentTitle!)"
    }
    
    @IBAction func pressOperator(_ sender: UIButton) {
        if valueA == nil {
            valueA = refreshDisplay.text
        }
        
        switch sender.currentTitle {
        case "+":
            currentOperator = .add
        case "-":
            currentOperator = .subtract
        case "*":
            currentOperator = .multiply
        case "/":
            currentOperator = .divide
        default:
            print("none")
        }
        
        clearValue()
    }
    
    @IBAction func clearDisplay(_ sender: UIButton) {
        clearValue()
    }
    
    func clearValue() {
        refreshDisplay.text = ""
    }
    
    @IBAction func resolveCalc(_ sender: UIButton) {
        var result: String?
        valueB = refreshDisplay.text
        if valueA != nil && currentOperator != nil && valueB != nil {
            result = calulator.doCalc(setVal: valueA!, setValB: valueB!, setOperator: currentOperator!)
        }
        
        if result != nil {
            refreshDisplay.text = result
        }
        
        valueA = nil
        valueB = nil
    }
    
    
    @IBOutlet weak var refreshDisplay: UILabel!
}

