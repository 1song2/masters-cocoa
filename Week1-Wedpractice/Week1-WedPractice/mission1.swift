//
//  mission1.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션1. printXY()
//func printXY(max: Int) {
//    for _ in 1...max {
//        for number in 1...max {
//            print(number, terminator: " ")
//        }
//        print()
//    }
//}

func fillXY(max: Int) -> Array<Array<Int>> {
    var outerArray = Array<Array<Int>>()
    for _ in 1...max {
        var innerArray = Array<Int>()
        for number in 1...max {
            innerArray.append(number)
        }
        outerArray.append(innerArray)
    }
    return outerArray
}

func printXY(array: Array<Array<Int>>) {
    for innerArray in array {
        for item in innerArray {
            print(item, terminator: " ")
        }
        print()
    }
}
