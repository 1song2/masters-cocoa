//
//  ViewController.swift
//  HangulClock
//
//  Created by Song on 2020/11/23.
//

//TODO: - ClockManager로 모델 분리

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var amPmLabelArray: [UILabel]!
    @IBOutlet var hoursLabelArray: [UILabel]!
    @IBOutlet weak var dayNightImageView: UIImageView!
    @IBOutlet var minutesLabelArray: [UILabel]!
    @IBOutlet weak var minuteUnitLabel: UILabel!
    @IBOutlet var secondsLabelArray: [UILabel]!
    
    let calendar = Calendar.current
    var timer = Timer()
    var hour: Int { calendar.component(.hour, from: Date()) }
    var minutes: Int { calendar.component(.minute, from: Date()) }
    var seconds: Int { calendar.component(.second, from: Date()) }
    
    //var clockManager = ClockManager(seconds: seconds)
    
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
        (array[0].alpha, array[1].alpha) = (hour > 12) ? (0.1, 1.0) : (1.0, 0.1)
    }
    
    func updateUI(for imageView: UIImageView) {
        let sfSymbol = (hour >= 7 || hour < 19) ? "sun.max.fill" : "moon.fill"
        imageView.image = UIImage(systemName: sfSymbol)
    }
    
    func updateHourUI() {
        clearUI(array: hoursLabelArray)
        
        //let hourDigits = "\(hour)".compactMap { $0.wholeNumberValue }
        //clearUI(array: hoursLabelArray)
        //if hour > 21 {
        //    switch hourDigits[1] {
        //    case 4:
        //        hoursLabelArray[0].alpha = 1.0
        //    case 3:
        //        hoursLabelArray[1].alpha = 1.0
        //        hoursLabelArray[2].alpha = 1.0
        //    case 2:
        //        hoursLabelArray[1].alpha = 1.0
        //    default:
        //        break
        //    }
        //} else if hour > 12 {
        //    hoursLabelArray[1].alpha = 0.1
        //    switch hourDigits[1] - 2 {
        //    case 1:
        //        hoursLabelArray[2].alpha = 1.0
        //    case 2:
        //        hoursLabelArray[3].alpha = 1.0
        //    case 3:
        //        hoursLabelArray[4].alpha = 1.0
        //    case 4:
        //        hoursLabelArray[5].alpha = 1.0
        //    case 5:
        //        hoursLabelArray[6].alpha = 1.0
        //        hoursLabelArray[8].alpha = 1.0
        //    case 6:
        //        hoursLabelArray[7].alpha = 1.0
        //        hoursLabelArray[8].alpha = 1.0
        //    case 7:
        //        hoursLabelArray[9].alpha = 1.0
        //        hoursLabelArray[10].alpha = 1.0
        //    case 8:
        //        hoursLabelArray[11].alpha = 1.0
        //        hoursLabelArray[12].alpha = 1.0
        //    case 9:
        //        hoursLabelArray[13].alpha = 1.0
        //        hoursLabelArray[14].alpha = 1.0
        //    default:
        //        break
        //    }
        //} else if hour > 9 {
        //    hoursLabelArray[1].alpha = 1.0
        //    switch hourDigits[0] {
        //    case 0:
        //        return
        //    case 1:
        //        hoursLabelArray[2].alpha = 1.0
        //    case 2:
        //        hoursLabelArray[3].alpha = 1.0
        //    default:
        //        break
        //    }
        //} else {
        //    // hour > 12와 같음 (코드 따로 빼서 처리)
        //    hoursLabelArray[1].alpha = 0.1
        //    switch hourDigits[1] - 2 {
        //    case 1:
        //        hoursLabelArray[2].alpha = 1.0
        //    case 2:
        //        hoursLabelArray[3].alpha = 1.0
        //    case 3:
        //        hoursLabelArray[4].alpha = 1.0
        //    case 4:
        //        hoursLabelArray[5].alpha = 1.0
        //    case 5:
        //        hoursLabelArray[6].alpha = 1.0
        //        hoursLabelArray[8].alpha = 1.0
        //    case 6:
        //        hoursLabelArray[7].alpha = 1.0
        //        hoursLabelArray[8].alpha = 1.0
        //    case 7:
        //        hoursLabelArray[9].alpha = 1.0
        //        hoursLabelArray[10].alpha = 1.0
        //    case 8:
        //        hoursLabelArray[11].alpha = 1.0
        //        hoursLabelArray[12].alpha = 1.0
        //    case 9:
        //        hoursLabelArray[13].alpha = 1.0
        //        hoursLabelArray[14].alpha = 1.0
        //    default:
        //        break
        //    }
        //}
    }
    
    func updateMinutesUI() {
        let minutesDigits = "\(minutes)".compactMap { $0.wholeNumberValue }
        clearUI(array: minutesLabelArray)
        if minutesDigits.count > 1 {
            minutesLabelArray[4].alpha = 1.0
            switch minutesDigits[0] {
            case 2:
                minutesLabelArray[0].alpha = 1.0
            case 3:
                minutesLabelArray[1].alpha = 1.0
            case 4:
                minutesLabelArray[2].alpha = 1.0
            case 5:
                minutesLabelArray[3].alpha = 1.0
            default:
                break
            }
            switch minutesDigits[1] {
            case 1:
                minutesLabelArray[5].alpha = 1.0
            case 2:
                minutesLabelArray[6].alpha = 1.0
            case 3:
                minutesLabelArray[7].alpha = 1.0
            case 4:
                minutesLabelArray[8].alpha = 1.0
            case 5:
                minutesLabelArray[9].alpha = 1.0
            case 6:
                minutesLabelArray[10].alpha = 1.0
            case 7:
                minutesLabelArray[11].alpha = 1.0
            case 8:
                minutesLabelArray[12].alpha = 1.0
            case 9:
                minutesLabelArray[13].alpha = 1.0
            default:
                break
            }
        } else {
            switch minutesDigits[0] {
            case 0:
                minuteUnitLabel.alpha = 0.1
            case 1:
                minutesLabelArray[5].alpha = 1.0
            case 2:
                minutesLabelArray[6].alpha = 1.0
            case 3:
                minutesLabelArray[7].alpha = 1.0
            case 4:
                minutesLabelArray[8].alpha = 1.0
            case 5:
                minutesLabelArray[9].alpha = 1.0
            case 6:
                minutesLabelArray[10].alpha = 1.0
            case 7:
                minutesLabelArray[11].alpha = 1.0
            case 8:
                minutesLabelArray[12].alpha = 1.0
            case 9:
                minutesLabelArray[13].alpha = 1.0
            default:
                break
            }
        }
    }
    
    func updateSecondUI() {
        let clockManager = ClockManager.Seconds(seconds: seconds)
        //clockManager.getSecondsText(seconds)
        if seconds == 0 {
            secondsLabelArray[0].isHidden = true
            //secondsLabelArray[1].text = "정각"
            secondsLabelArray[1].text = clockManager.onesPlcae
        } else {
            secondsLabelArray[0].isHidden = false
            secondsLabelArray[0].text = clockManager.tensPlace
            secondsLabelArray[1].text = clockManager.onesPlcae
            //switch seconds / 10 {
            //case 0:
            //    secondsLabelArray[0].text = ""
            //case 1:
            //    secondsLabelArray[0].text = "십"
            //case 2:
            //    secondsLabelArray[0].text = "이십"
            //case 3:
            //    secondsLabelArray[0].text = "삼십"
            //case 4:
            //    secondsLabelArray[0].text = "사십"
            //case 5:
            //    secondsLabelArray[0].text = "오십"
            //case 6:
            //    secondsLabelArray[0].text = "육십"
            //case 7:
            //    secondsLabelArray[0].text = "칠십"
            //case 8:
            //    secondsLabelArray[0].text = "팔십"
            //case 9:
            //    secondsLabelArray[0].text = "구십"
            //default:
            //    break
            //}
            //switch seconds % 10 {
            //case 0:
            //    secondsLabelArray[1].text = "초"
            //case 1:
            //    secondsLabelArray[1].text = "일초"
            //case 2:
            //    secondsLabelArray[1].text = "이초"
            //case 3:
            //    secondsLabelArray[1].text = "삼초"
            //case 4:
            //    secondsLabelArray[1].text = "사초"
            //case 5:
            //    secondsLabelArray[1].text = "오초"
            //case 6:
            //    secondsLabelArray[1].text = "육초"
            //case 7:
            //    secondsLabelArray[1].text = "칠초"
            //case 8:
            //    secondsLabelArray[1].text = "팔초"
            //case 9:
            //    secondsLabelArray[1].text = "구초"
            //default:
            //    break
            //}
        }
    }
    
    func clearUI(array: [UILabel]) {
        array.forEach { $0.alpha = 0.1 }
    }
}
