//
//  mission4.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션4. printCenterTree()
//func printCenterTree(lines: Int) {
//    for index in 1...lines {
//        print(String(repeating: " ", count: lines - index), terminator: "")
//        print(String(repeating: "🎈 ", count: index))
//    }
//    print()
//}

func printCenterTree(lines: Int) -> Array<String> {
    var result = Array<String>()
    for index in 1...lines {
        result.append(String(repeating: " ", count: lines - index) + String(repeating: "🎈 ", count: index))
    }
    return result
}
