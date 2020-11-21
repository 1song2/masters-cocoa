//
//  mission7.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션7. print3515()
func print3515(lines: Int) -> Array<String> {
    var result = Array<String>()
    for index in 1...lines {
        let condition = (index % 3, index % 5)
        switch condition {
        case (0, 0):
            result.append("👏🏼🙏")
        case (0, _):
            result.append("👏🏼")
        case (_, 0):
            result.append("🙏")
        default:
            result.append("\(index)")
        }
    }
    return result
}
