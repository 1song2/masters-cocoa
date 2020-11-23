//
//  ViewController.swift
//  HangulClock
//
//  Created by Song on 2020/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var amPmLabelArray: [UILabel]!
    @IBOutlet var hoursLabelArray: [UILabel]!
    @IBOutlet weak var dayNightImageView: UIImageView!
    @IBOutlet var minutesLabelArray: [UILabel]!
    @IBOutlet weak var minuteUnitLabel: UILabel!
    @IBOutlet var secondsLabelArray: [UILabel]!
    
    let calendar = Calendar.current
    var currentHour: Int { calendar.component(.hour, from: Date()) }
    var currentMinutes: Int { calendar.component(.minute, from: Date()) }
    var currentSeconds: Int { calendar.component(.second, from: Date()) }
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(for: amPmLabelArray)
        updateUI(for: dayNightImageView)
        updateHourUI()
        updateMinutesUI()
        updateSecondUI()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateEverySecond), userInfo: nil, repeats: true)
    }
    
    @objc func updateEverySecond() {
        updateUI(for: amPmLabelArray)
        updateUI(for: dayNightImageView)
        updateHourUI()
        updateMinutesUI()
        updateSecondUI()
        print(calendar.component(.second, from: Date()))
    }
    
    func updateUI(for array: [UILabel]) {
        (array[0].alpha, array[1].alpha) = (currentHour > 12) ? (0.1, 1.0) : (1.0, 0.1)
    }
    
    func updateUI(for imageView: UIImageView) {
        let sfSymbol = (currentHour >= 7 && currentHour < 19) ? "sun.max.fill" : "moon.fill"
        imageView.image = UIImage(systemName: sfSymbol)
    }
    
    func updateHourUI() {
        clearUI(array: hoursLabelArray)
        //let hourManager = Hour(value: currentHour)
        if let safeTensPlace = Hour(value: currentHour).tensPlace {
            hoursLabelArray[safeTensPlace].alpha = 1.0
        }
        hoursLabelArray[Hour(value: currentHour).onesPlace.0].alpha = 1.0
        if let safeOnesPlace = Hour(value: currentHour).onesPlace.1 {
            hoursLabelArray[safeOnesPlace].alpha = 1.0
        }
    }
    
    func updateMinutesUI() {
        clearUI(array: minutesLabelArray)
        minuteUnitLabel.alpha = (currentMinutes == 0) ? 0.1 : 1.0
        //let minutesManager = Minutes(value: currentMinutes)
        minutesLabelArray[Minutes(value: currentMinutes).tensPlace.0].alpha = 1.0
        if let safeTensPlace = Minutes(value: currentMinutes).tensPlace.1 {
            minutesLabelArray[safeTensPlace].alpha = 1.0
        }
        minutesLabelArray[Minutes(value: currentMinutes).onesPlcae].alpha = 1.0
    }
    
    func updateSecondUI() {
        //let secondManager = Seconds(value: seconds)
        secondsLabelArray[0].isHidden = currentSeconds == 0
        secondsLabelArray[0].text = Seconds(value: currentSeconds).tensPlace
        secondsLabelArray[1].text = Seconds(value: currentSeconds).onesPlcae
    }
    
    func clearUI(array: [UILabel]) {
        array.forEach { $0.alpha = 0.1 }
    }
}
