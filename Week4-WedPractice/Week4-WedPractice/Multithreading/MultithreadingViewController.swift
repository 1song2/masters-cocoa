//
//  MultithreadingViewController.swift
//  Week4-WedPractice
//
//  Created by Song on 2020/11/25.
//

import UIKit

class MultithreadingViewController: UIViewController {
    @IBOutlet var countLabelArray: [UILabel]!
    
    let multithreading = Multithreading()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        multithreading.doOperation()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.updateUI(index: 0, word: "대중")
            self.updateUI(index: 1, word: "경제")
            self.updateUI(index: 2, word: "재산")
            self.updateUI(index: 3, word: "자유")
            self.updateUI(index: 4, word: "국제")
            self.updateUI(index: 5, word: "시장")
            self.updateUI(index: 6, word: "사상")
            self.updateUI(index: 7, word: "부자")
            self.updateUI(index: 8, word: "학자")
            self.updateUI(index: 9, word: "개인")
            self.updateUI(index: 10, word: "욕망")
            self.updateUI(index: 11, word: "생활")
            self.updateUI(index: 12, word: "자원")
            self.updateUI(index: 13, word: "사람")
            self.updateUI(index: 14, word: "노동")
            self.updateUI(index: 15, word: "인물")
            self.updateUI(index: 16, word: "소비")
            self.updateUI(index: 17, word: "사회")
            self.updateUI(index: 18, word: "이론")
            self.updateUI(index: 19, word: "새로운")
        }
    }
    
    func updateUI(index: Int, word: String) {
        countLabelArray[index].text = "\(multithreading.wordCountDict[word] ?? 0)"
    }
}
