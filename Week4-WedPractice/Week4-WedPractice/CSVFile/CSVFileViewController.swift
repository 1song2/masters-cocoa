//
//  ViewController.swift
//  Week4-WedPractice
//
//  Created by Song on 2020/11/25.
//

import UIKit

class CSVFileViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var displayTextView: UITextView!
    
    let csvFile = CSVFile(file: "codesquad")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        csvFile.add(name: "gildong", email: "gildong@codesquad.kr", language: "swift", grade: 5)
        //print(csvFile.fileContents)
        //print(csvFile.removeBy(email: "gildong@codesquad.kr"))
    }
    
    @IBAction func searchMemberButtonPressed(_ sender: Any) {
        if let memberName = nameTextField.text {
            if let memberInfo = csvFile.findBy(name: memberName) {
                displayTextView.text = memberInfo.map { "\($0.0) : \($0.1)" }.joined(separator: "\n")
            } else {
                displayTextView.text = "존재하지 않는 멤버입니다."
            }
        }
    }
}
