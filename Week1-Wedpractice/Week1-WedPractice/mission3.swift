//
//  mission3.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션3. printRightTree()
//func printRightTree(lines: Int) {
//    for index in 1...lines {
//        print(String(repeating: " ", count: lines - index), terminator: "")
//        print(String(repeating: "*", count: index))
//    }
//}

func fillRightTree(lines: Int) -> Array<Array<String>> {
    var outerArray = Array<Array<String>>()
    for index in 1...lines {
        var innerArray = Array<String>()
        innerArray.append(String(repeating: " ", count: lines - index))
        innerArray.append(String(repeating: "*", count: index))
        outerArray.append(innerArray)
    }
    return outerArray
}

func printRightTree(array: Array<Array<String>>) {
    for innerArray in array {
        for item in innerArray {
            print(item, terminator: "")
        }
        print()
    }
}
