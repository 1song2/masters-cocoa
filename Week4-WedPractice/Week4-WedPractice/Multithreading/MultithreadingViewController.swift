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
    let wordArray = ["대중", "경제", "재산", "자유", "국제", "시장", "사상", "부자", "학자", "개인", "욕망", "생활", "자원", "사람", "노동", "인물", "소비", "사회", "이론", "새로운"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        multithreading.doOperation()
        
        //DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
        //    for index in 0..<20 {
        //        self.updateUI(index: index, word: self.wordArray[index])
        //    }
        //}
    }
    
    @IBAction func countButtonPressed(_ sender: UIButton) {
        for index in 0..<20 {
            self.updateUI(index: index, word: self.wordArray[index])
        }
    }
    
    func updateUI(index: Int, word: String) {
        countLabelArray[index].text = "\(multithreading.wordCountDict[word] ?? 0)번"
    }
}
