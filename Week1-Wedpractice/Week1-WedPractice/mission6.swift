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
func fillDiamond(lines: Int) -> Array<Array<String>> {
    var outerArray = Array<Array<String>>()
    for index in 1...lines {
        var innerArray = Array<String>()
        let middle = (lines + 1) / 2
        let valueCount = (index <= middle) ? index * 2 - 1 : (lines - index) * 2 + 1
        let spaceCount = (index <= middle) ? middle - index : index - middle - (1 - lines % 2)
        innerArray.append(String(repeating: " ", count: spaceCount))
        innerArray.append(String(repeating: "*", count: valueCount))
        outerArray.append(innerArray)
    }
    return outerArray
}

func printDiamond(array: Array<Array<String>>) {
    for innerArray in array {
        for item in innerArray {
            print(item, terminator: "")
        }
        print()
    }
}
