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
    }
    
    @IBAction func checkButtonPressed(_ sender: UIButton) {
        if inputWordTextField.text == currentWordLabel.text {
            currentIndex += 1
            currentWordLabel.text = nextWordLabel.text
            // 틀렸다가 맞췄을 때 다시 textColor를 black으로 변경
            currentWordLabel.textColor = .black
            inputWordTextField.text = ""
            // Index out of range 에러 처리해주기 위함
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

//MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    // return키 탭될 시, 소프트 키보드 사라짐
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    // 배경 터치 시, 소프트 키보드 사라짐
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 아래 두줄 같은 역할
        self.view.endEditing(true)
        //inputWordTextField.resignFirstResponder()
    }
}
