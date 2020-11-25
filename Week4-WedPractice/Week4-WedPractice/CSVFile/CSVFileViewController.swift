//
//  ViewController.swift
//  Week4-WedPractice
//
//  Created by Song on 2020/11/25.
//

import UIKit

class CSVFileViewController: UIViewController {

    let csvFile = CSVFile(file: "codesquad")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //csvFile.add(name: "gildong", email: "gildong@codesquad.kr", language: "swift", grade: 5)
        //print(csvFile.fileContents)
        //print(csvFile.findBy(name: "JK"))
        print(csvFile.removeBy(email: "gildong@codesquad.kr"))
    }
}

