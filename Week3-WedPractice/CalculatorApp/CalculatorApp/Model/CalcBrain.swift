//
//  CalcBrain.swift
//  CalculatorApp
//
//  Created by Song on 2020/11/18.
//

import Foundation

struct CalcBrain {
    var operation = ""
    
    func enterNumbers(enteredNumber: String, enteringNumber: String) -> String {
        switch (enteredNumber, enteringNumber) {
        case ("0", "."):
            return enteredNumber + enteringNumber
        case ("0", _):
            return enteringNumber
        case (_, ".") where enteredNumber.contains("."):
            return enteredNumber
        case (_, _) where enteredNumber.count >= 18:
            return enteredNumber
        default:
            return enteredNumber + enteringNumber
        }
    }
    
    mutating func getResult(lhsNumber: Double, rhsNumber: Double) -> Double {
        var result = Double()
        switch operation {
        case "÷":
            result = lhsNumber / rhsNumber
        case "x":
            result = lhsNumber * rhsNumber
        case "-":
            result = lhsNumber - rhsNumber
        case "+":
            result = lhsNumber + rhsNumber
        default:
            break
        }
        return result
    }
    
    mutating func allClear() {
        operation = ""
    }
}
