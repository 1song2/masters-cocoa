//
//  ViewController.swift
//  WordPairsQuiz
//
//  Created by Song on 2020/11/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var currentWordLabel: UILabel!
    @IBOutlet weak var nextWordLabel: UILabel!
    @IBOutlet weak var inputWordTextField: UITextField!
    
    var currentIndex = 0
    let wholeWordsArray = [
        "동해물과",
        "백두산이",
        "마르고",
        "닳도록",
        "하느님이",
        "보우하사",
        "우리나라",
        "만세",
        "무궁화",
        "삼천리",
    ].shuffled()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputWordTextField.delegate = self
        currentWordLabel.text = wholeWordsArray[currentIndex]
        nextWordLabel.text = wholeWordsArray[currentIndex + 1]
        print(wholeWordsArray)
    }
    
    @IBAction func checkButtonPressed(_ sender: UIButton) {
        if inputWordTextField.text == currentWordLabel.text {
            currentIndex += 1
            currentWordLabel.text = nextWordLabel.text
            currentWordLabel.textColor = .black
            inputWordTextField.text = ""
            if currentIndex >= 8 {
                nextWordLabel.text = ""
            } else {
                nextWordLabel.text = wholeWordsArray[currentIndex + 1]
            }
        } else {
            currentWordLabel.textColor = .red
            inputWordTextField.text = ""
        }    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}
