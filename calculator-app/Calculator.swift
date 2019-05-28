//
//  Calculator.swift
//  calculator-app
//
//  Created by Pablo Trindade on 26/05/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import Foundation

class Calculator {
    var valuePrimary: Int = 0
    var valueSecondary: Int = 0
    var valueOnDisplay: String = "0"
    
    func doCalc(setVal valueA: String, setValB valueB: String, setOperator operator: Operators) -> String {
        return "Resultado"
    }
}

enum Operators: String {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
}
