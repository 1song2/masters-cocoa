//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Song on 2020/11/18.
//

import UIKit

class ViewController: UIViewController {

//FIXME: - 2 + 4 + 3 = 9.0 후 + 버튼 누르면 배열에 9.0 또 들어가는 문제
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    
    var calcBrain = CalcBrain()
    var displayedNumber: String {
        var output = ""
        if let safeText = displayLabel.text {
            output =  safeText
        }
        return output
    }
    var stackValuesArray = Array<Double>()
    lazy var stackPointer = stackView.arrangedSubviews.count - 1
    var stackButton: UIButton {
        stackView.arrangedSubviews[stackPointer] as! UIButton
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func numberKeysPressed(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            displayLabel.text = calcBrain.enterNumbers(enteredNumber: displayedNumber, enteringNumber: buttonTitle)
        }
    }
    
    @IBAction func operationKeysPressed(_ sender: UIButton) {
        //calcBrain.operation = sender.currentTitle!
        if calcBrain.operation == "" {
        //if stackValuesArray.isEmpty {
            // 아직 연산할 값이 없는 케이스
            stackValuesArray.append(Double(displayedNumber) ?? 0.0)
            if let buttonTitle = sender.currentTitle {
                calcBrain.operation = buttonTitle
            }
            stackButton.setTitleColor(.label, for: .normal)
            stackButton.setTitle(displayedNumber, for: .normal)
            stackPointer = (stackPointer > 0) ? stackPointer - 1 : stackView.arrangedSubviews.count - 1
            displayLabel.text = "0"
        } else {
            // 이미 입력되어있는 값과 연산
            stackValuesArray.append(Double(displayedNumber) ?? 0.0)
            if let lastNumber = stackValuesArray.popLast(),
               let numberBeforeLast = stackValuesArray.popLast() {
                let result = calcBrain.getResult(lhsNumber: numberBeforeLast, rhsNumber: lastNumber)
                stackValuesArray.append(result)
                stackButton.setTitle("\(result)", for: .normal)
            }
            displayLabel.text = "0"
            stackButton.setTitleColor(.label, for: .normal)
        }
        print("current operation symbol is \(calcBrain.operation)")
        print("There is/are \(stackValuesArray) in stack values array")
        print("Stack Pointer is on \(stackPointer) now")
        print("=============================")
    }
    
    @IBAction func equalsKeyPressed(_ sender: UIButton) {
        print(calcBrain.operation)
        stackValuesArray.append(Double(displayedNumber) ?? 0.0)
        if let lastNumber = stackValuesArray.popLast(),
           let numberBeforeLast = stackValuesArray.popLast() {
            let result = calcBrain.getResult(lhsNumber: numberBeforeLast, rhsNumber: lastNumber)
            print(result)
            stackValuesArray.append(result)
            displayLabel.text = "\(result)"
            stackButton.setTitle("\(result)", for: .normal)
        }
        stackButton.setTitleColor(.label, for: .normal)
        calcBrain.operation = ""
        print("current operation symbol is \(calcBrain.operation)")
        print("There is/are \(stackValuesArray) in stack values array")
        print("Stack Pointer is on \(stackPointer) now")
        print("=============================")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            calcBrain.allClear()
            stackValuesArray = Array<Double>()
            displayLabel.text = "0"
            stackPointer = stackView.arrangedSubviews.count - 1
            for index in 0...4 {
                let stackButton = stackView.arrangedSubviews[index] as! UIButton
                stackButton.setTitle("Stack \(index)", for: .normal)
                stackButton.setTitleColor(.systemGray2, for: .normal)
            }
        }
        print("current operation symbol is \(calcBrain.operation)")
        print("There is/are \(stackValuesArray) in stack values array")
        print("Stack Pointer is on \(stackPointer) now")
        print("=============================")
    }
}
