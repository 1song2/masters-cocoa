//
//  ClockManager.swift
//  HangulClock
//
//  Created by Song on 2020/11/23.
//

import Foundation

struct ClockManager {
    
    struct Seconds {
        let seconds: Int
        var tensPlace: String {
            switch seconds / 10 {
            case 1:
                return "십"
            case 2:
                return "이십"
            case 3:
                return "삼십"
            case 4:
                return "사십"
            case 5:
                return "오십"
            default:
                return ""
            }
        }
        var onesPlcae: String {
            switch seconds % 10 {
            case 0 where seconds == 0:
                return "정각"
            case 1:
                return "일초"
            case 2:
                return "이초"
            case 3:
                return "삼초"
            case 4:
                return "사초"
            case 5:
                return "오초"
            case 6:
                return "육초"
            case 7:
                return "칠초"
            case 8:
                return "팔초"
            case 9:
                return "구초"
            default:
                return "초"
            }
        }
    }
    
    //if hour > 21 {
    //    //22, 23, 24
    //    switch hour % 10 {
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
    //} else if hour > 9 && hour < 13 {
    //    //10, 11, 12
    //    hoursLabelArray[1].alpha = 1.0
    //    switch hour % 10 {
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
    //    //1, 2, 3, 4, 5, 6, 7, 8, 9 //13, 14, 15, 16, 17, 18, 19, 20, 21
    //    hoursLabelArray[1].alpha = 0.1
    //    switch (hour - 2) % 10 {
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
    
    //mutating func getSecondsText(_ seconds: Int) {
    //    if seconds == 0 {
    //        //secondsLabelArray[0].isHidden = true
    //        onesPlcae = "정각"
    //    } else {
    //        if seconds / 10 >= 1 {
    //            switch seconds / 10 {
    //            case 0:
    //                tensPlace = ""
    //            case 1:
    //                tensPlace = "십"
    //            case 2:
    //                tensPlace = "이십"
    //            case 3:
    //                tensPlace = "삼십"
    //            case 4:
    //                tensPlace = "사십"
    //            case 5:
    //                tensPlace = "오십"
    //            default:
    //                tensPlace = ""
    //            }
    //        } else {
    //            tensPlace = ""
    //        }
    //        //secondsLabelArray[0].isHidden = false
    //        switch seconds % 10 {
    //        case 0:
    //            onesPlcae = "초"
    //        case 1:
    //            onesPlcae = "일초"
    //        case 2:
    //            onesPlcae = "이초"
    //        case 3:
    //            onesPlcae = "삼초"
    //        case 4:
    //            onesPlcae = "사초"
    //        case 5:
    //            onesPlcae = "오초"
    //        case 6:
    //            onesPlcae = "육초"
    //        case 7:
    //            onesPlcae = "칠초"
    //        case 8:
    //            onesPlcae = "팔초"
    //        case 9:
    //            onesPlcae = "구초"
    //        default:
    //            onesPlcae = ""
    //        }
    //    }
    //
    //}
}
