//
//  mission6.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션6. printDiamon()
//func printDiamond(lines: Int) {
//    for index in 1...lines {
//        let middle = (lines + 1) / 2
//        let valueCount = (index <= middle) ? index * 2 - 1 : (lines - index) * 2 + 1
//        let spaceCount = (index <= middle) ? middle - index : index - middle - (1 - lines % 2)
//        print(String(repeating: " ", count: spaceCount) + String(repeating: "*", count: valueCount))
//    }
//}
func printDiamond(lines: Int) -> Array<String> {
    var result = Array<String>()
    for index in 1...lines {
        let middle = (lines + 1) / 2
        let valueCount = (index <= middle) ? index * 2 - 1 : (lines - index) * 2 + 1
        let spaceCount = (index <= middle) ? middle - index : index - middle - (1 - lines % 2)
        result.append(String(repeating: " ", count: spaceCount) + String(repeating: "*", count: valueCount))
    }
    return result
}
