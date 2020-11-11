//
//  ViewController.swift
//  passwordValidator
//
//  Created by Song on 2020/11/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var levelView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordInput.placeholder = "비밀번호를 입력하세요"
    }
    
    func passwordValidator(password: String) -> Int {
        var condition = (length: false, alphabet: false, number: false, symbol: false)
        let alphabet = CharacterSet.letters
        let number = CharacterSet.decimalDigits
        var symbol = CharacterSet()
        symbol.insert(charactersIn: "-+!@#$%")
        
        condition.length = password.count >= 8
        // isEmpty로 고쳐볼 수 있을까?
        condition.alphabet = (password.rangeOfCharacter(from: alphabet) != nil)
        // inverted는 only 일때인가?
        // inverted 왜 들어가지? != 대신 == 사용
        condition.number = (password.rangeOfCharacter(from: number) != nil)
        condition.symbol = (password.rangeOfCharacter(from: symbol) != nil)
        
        print(condition)
        //print(alphabet)
        //print(number)
        //print(symbol)
        
        switch condition {
        case (length: true, alphabet: true, number: true, symbol: true):
            return 5
        case (length: true, alphabet: true, number: true, symbol: false):
            return 4
        case (length: false, alphabet: true, number: false, symbol: false):
            return 2
        case (length: false, alphabet: false, number: true, symbol: false):
            return 1
        default:
            return 3
        }
    }
    
    @IBAction func validateButtonPressed(_ sender: UIButton) {
        switch passwordValidator(password: passwordInput.text!) {
        case 1:
            levelView.backgroundColor = .red
            descriptionLabel.text = "아주 약한 암호"
        case 2:
            levelView.backgroundColor = .orange
            descriptionLabel.text = "약한 암호"
        case 3:
            levelView.backgroundColor = .yellow
            descriptionLabel.text = "보통 암호"
        case 4:
            levelView.backgroundColor = .blue
            descriptionLabel.text = "강한 암호"
        case 5:
            levelView.backgroundColor = .green
            descriptionLabel.text = "아주 강한 암호"
        default:
            levelView.backgroundColor = .systemGray
            descriptionLabel.text = "암호 수준"
        }
    }
}

