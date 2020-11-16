//
//  ViewController.swift
//  WaitlistApp
//
//  Created by Song on 2020/11/16.
//

import UIKit

class ViewController: UIViewController {
    var totalWaitingNumber = 0
    
    @IBOutlet weak var totalWaitingNumberLabel: UILabel!
    @IBOutlet weak var spotsAvailableView: UIProgressView!
    @IBOutlet weak var addToListButton: UIButton!
    @IBOutlet weak var seatedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func addToListButtonPressed(_ sender: UIButton) {
        totalWaitingNumber += 1
        updateUI()
    }
    
    
    @IBAction func seatedButtonPressed(_ sender: UIButton) {
        totalWaitingNumber -= 1
        updateUI()
    }

    func updateUI() {
        // totalWaitingNumberLabel
        totalWaitingNumberLabel.text = "\(totalWaitingNumber)명"
        totalWaitingNumberLabel.textColor = (totalWaitingNumber < 20) ? .black : .red
        // spotsAvailableView
        spotsAvailableView.progress = Float(totalWaitingNumber) / Float(20)
        // addToListButton
        addToListButton.isEnabled = totalWaitingNumber < 20
        /// state에 따라 Title과 TitleColor를 다르게 함
        addToListButton.setTitleColor(.lightGray, for: .disabled)
        addToListButton.setTitle("최대 대기인원 도달", for: .disabled)
        // seatedButton
        seatedButton.isEnabled = totalWaitingNumber > 0
        /// state에 따라 Title과 TitleColor를 다르게 함
        seatedButton.setTitleColor(.lightGray, for: .disabled)
        seatedButton.setTitle("대기 인원 없음", for: .disabled)
    }
}

