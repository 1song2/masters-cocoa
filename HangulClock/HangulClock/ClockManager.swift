//
//  ClockManager.swift
//  HangulClock
//
//  Created by Song on 2020/11/23.
//

import Foundation

struct Hour {
    let value: Int
    var tensPlace: Int? {
        if value > 21 || (value > 0 && value < 13) {
            return 1
        } else {
            return nil
        }
    }
    var onesPlace: (Int, Int?) {
        //24시는 0시
        if value == 0 {
            return (0, nil)
        }
        switch value {
        case 1, 11, 13, 23:
            return (2, nil)
        case 2, 12, 14:
            return (3, nil)
        case 3, 15:
            return (4, nil)
        case 4, 16:
            return (5, nil)
        case 5, 17:
            return (6, 8)
        case 6, 18:
            return (7, 8)
        case 7, 19:
            return (9, 10)
        case 8, 20:
            return (11, 12)
        case 9, 21:
            return (13, 14)
        default:
            return (0, 0)
        }
    }
}

struct Minutes {
    let value: Int
    var tensPlace: (Int, Int?) {
        if value / 10 >= 1 {
            switch value / 10 {
            case 2:
                return (4, 0)
            case 3:
                return (4, 1)
            case 4:
                return (4, 2)
            case 5:
                return (4, 3)
            default:
                return (4, nil)
            }
        }
        return (0, nil)
    }
    
    var onesPlcae: Int {
        switch value % 10 {
        case 1:
            return 5
        case 2:
            return 6
        case 3:
            return 7
        case 4:
            return 8
        case 5:
            return 9
        case 6:
            return 10
        case 7:
            return 11
        case 8:
            return 12
        case 9:
            return 13
        default:
            return 0
        }
    }
}

struct Seconds {
    let value: Int
    var tensPlace: String {
        switch value / 10 {
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
        switch value % 10 {
        case 0 where value == 0:
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

