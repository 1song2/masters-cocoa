//
//  mission2.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션2. printLeftTree()
//func printLeftTree(lines: Int) {
//    for index in 1...lines {
//        for _ in 1...index {
//            print("🎈", terminator: "")
//        }
//        print()
//    }
//}

func fillLeftTree(lines: Int) -> Array<Array<String>> {
    var outerArray = Array<Array<String>>()
    for index in 1...lines {
        var innerArray = Array<String>()
        for _ in 1...index {
            innerArray.append("🎈")
        }
        outerArray.append(innerArray)
    }
    return outerArray
}

func printLeftTree(array: Array<Array<String>>) {
    for innerArray in array {
        for item in innerArray {
            print(item, terminator: "")
        }
        print()
    }
}
