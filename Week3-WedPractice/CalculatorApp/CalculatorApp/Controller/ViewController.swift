//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Song on 2020/11/18.
//

import UIKit

class ViewController: UIViewController {
    
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
    var numbersArray = Array<Double>()
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
        if calcBrain.operation == "" {
            // 아직 연산할 값이 없는 케이스
            numbersArray.append(Double(displayedNumber) ?? 0.0)
            if let buttonTitle = sender.currentTitle {
                calcBrain.operation = buttonTitle
            }
            updateStackButtonUI(title: displayedNumber)
            displayLabel.text = "0"
            stackPointer = (stackPointer > 0) ? stackPointer - 1 : stackView.arrangedSubviews.count - 1
        } else {
            // 이미 입력되어있는 값과 연산
            numbersArray.append(Double(displayedNumber) ?? 0.0)
            if let lastNumber = numbersArray.popLast(),
               let numberBeforeLast = numbersArray.popLast() {
                let result = calcBrain.getResult(lhsNumber: numberBeforeLast, rhsNumber: lastNumber)
                numbersArray.append(result)
                updateStackButtonUI(title: "\(result)")
            }
            if let buttonTitle = sender.currentTitle {
                calcBrain.operation = buttonTitle
            }
            displayLabel.text = "0"
        }
        debugByPrinting()
    }
    
    @IBAction func equalsKeyPressed(_ sender: UIButton) {
        numbersArray.append(Double(displayedNumber) ?? 0.0)
        if let lastNumber = numbersArray.popLast(),
           let numberBeforeLast = numbersArray.popLast() {
            let result = calcBrain.getResult(lhsNumber: numberBeforeLast, rhsNumber: lastNumber)
            numbersArray.append(result)
            displayLabel.text = "\(result)"
            updateStackButtonUI(title: "\(result)")
        }
        calcBrain.operation = ""
        if numbersArray.isEmpty == false {
            numbersArray.removeLast()
        }
        debugByPrinting()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            calcBrain.allClear()
            numbersArray = Array<Double>()
            displayLabel.text = "0"
            stackPointer = stackView.arrangedSubviews.count - 1
            for index in 0...stackPointer {
                let stackButton = stackView.arrangedSubviews[index] as! UIButton
                stackButton.setTitle("Stack \(stackPointer - index)", for: .normal)
                stackButton.setTitleColor(.systemGray2, for: .normal)
            }
        }
        debugByPrinting()
    }
    
    func updateStackButtonUI(title: String) {
        stackButton.setTitle(title, for: .normal)
        stackButton.setTitleColor(.label, for: .normal)
    }
    
    func debugByPrinting() {
        print("operation: \(calcBrain.operation)")
        print("numbersArray: \(numbersArray)")
        print("stackPointer: \(stackPointer)")
        print("=============================")
    }
}
