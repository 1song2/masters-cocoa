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
    
    var clockManager = ClockManager()
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clockManager.updateTime()
        updateUI(for: amPmLabelArray)
        updateUI(for: dayNightImageView)
        updateHourUI()
        updateMinutesUI()
        updateSecondsUI()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateEverySecond), userInfo: nil, repeats: true)
    }
    
    @objc func updateEverySecond() {
        clockManager.updateTime()
        updateUI(for: amPmLabelArray)
        updateUI(for: dayNightImageView)
        updateHourUI()
        updateMinutesUI()
        updateSecondsUI()
    }
    
    func updateUI(for array: [UILabel]) {
        (array[0].alpha, array[1].alpha) = (clockManager.getHour() > 12) ? (0.1, 1.0) : (1.0, 0.1)
    }
    
    func updateUI(for imageView: UIImageView) {
        let sfSymbol = (clockManager.getHour() >= 7 && clockManager.getHour() < 19) ? "sun.max.fill" : "moon.fill"
        imageView.image = UIImage(systemName: sfSymbol)
    }
    
    func updateHourUI() {
        clearUI(array: hoursLabelArray)
        let currentHour = Hour(hour: clockManager.getHour())
        if let safeTensPlace = currentHour.tensPlace {
            hoursLabelArray[safeTensPlace].alpha = 1.0
        }
        hoursLabelArray[currentHour.onesPlace.0].alpha = 1.0
        if let safeOnesPlace = currentHour.onesPlace.1 {
            hoursLabelArray[safeOnesPlace].alpha = 1.0
        }
    }
    
    func updateMinutesUI() {
        clearUI(array: minutesLabelArray)
        let currentMinutes = Minutes(minutes: clockManager.getMinutes())
        minuteUnitLabel.alpha = (currentMinutes.minutes == 0) ? 0.1 : 1.0
        minutesLabelArray[currentMinutes.tensPlace.0].alpha = 1.0
        if let safeTensPlace = currentMinutes.tensPlace.1 {
            minutesLabelArray[safeTensPlace].alpha = 1.0
        }
        minutesLabelArray[currentMinutes.onesPlcae].alpha = 1.0
    }
    
    func updateSecondsUI() {
        let currentSeconds = Seconds(seconds: clockManager.getSeconds())
        secondsLabelArray[0].isHidden = currentSeconds.seconds == 0
        secondsLabelArray[0].text = currentSeconds.tensPlace
        secondsLabelArray[1].text = currentSeconds.onesPlcae
    }
    
    func clearUI(array: [UILabel]) {
        array.forEach { $0.alpha = 0.1 }
    }
}
