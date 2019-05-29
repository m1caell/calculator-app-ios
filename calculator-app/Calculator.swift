//
//  Calculator.swift
//  calculator-app
//
//  Created by Pablo Trindade on 26/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import Foundation

class Calculator {
    func doCalc(setVal valueA: String, setValB valueB: String, setOperator operatorSelected: Operators) -> String {
        var result: String = ""
        
        let valueReceivedA = (valueA as NSString).doubleValue
        let valueReceivedB = (valueB as NSString).doubleValue
        
        switch operatorSelected {
        case .add:
            result = String(valueReceivedA + valueReceivedB)
        case .subtract:
            result = String(valueReceivedA - valueReceivedB)
        case .multiply:
            result = String(valueReceivedA * valueReceivedB)
        case .divide:
            result = String(valueReceivedA / valueReceivedB)
        
        }
        
        return result
    }
}

enum Operators: String {
    case add
    case subtract
    case multiply
    case divide
}
