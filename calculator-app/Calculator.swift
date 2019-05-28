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
    
    
    func defineValuePrimary(value: String) -> Int {
        return 0
    }
    
    func defineValueSecondary(value: String) -> Int {
        return 0
    }
}

enum Operators: String {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
}
