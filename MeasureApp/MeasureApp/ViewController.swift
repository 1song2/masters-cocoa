//
//  ViewController.swift
//  MeasureApp
//
//  Created by Song on 2020/11/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputLabel.text = ""
    }

    @IBAction func convertButtonPressed(_ sender: UIButton) {
        if let inputText = inputTextField.text {
            if let inputNumber = Double(inputText) {
                let unitValue = Measurement(value: inputNumber, unit: UnitLength.inches)
                
                outputLabel.text = "\(unitValue.converted(to: UnitLength.centimeters))"
            }
        }
    }
    
    @IBAction func convertedToMButtonPressed(_ sender: UIButton) {
        if let inputText = inputTextField.text {
            if let inputNumber = Double(inputText) {
                let unitValue = Measurement(value: inputNumber, unit: UnitLength.inches)
                
                outputLabel.text = "\(unitValue.converted(to: UnitLength.meters))"
            }
        }
    }
    
    @IBAction func convertedToFeetButtonPressed(_ sender: UIButton) {
        if let inputText = inputTextField.text {
            if let inputNumber = Double(inputText) {
                let unitValue = Measurement(value: inputNumber, unit: UnitLength.inches)
                
                outputLabel.text = "\(unitValue.converted(to: UnitLength.feet))"
            }
        }
    }
    
}

