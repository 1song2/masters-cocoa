//
//  mission5.swift
//  Week1-practice
//
//  Created by Song on 2020/11/05.
//

import Foundation

// 미션5-1. printNumbers()
//func printNumbers(lines: Int) {
//    var number = 1
//    for index in 1...lines {
//        for _ in 1...index {
//            print(number, terminator: " ")
//            number += 1
//        }
//        print()
//    }
//}
func printNumbers(lines: Int) -> Array<Array<Int>> {
    var result = Array<Array<Int>>()
    var number = 1
    for index in 1...lines {
        var innerArray = Array<Int>()
        for _ in 1...index {
            innerArray.append(number)
            number += 1
        }
        result.append(innerArray)
    }
    return result
}

// 미션5-2. printSquare()
//func printSquare(columns: Int) {
//    var num = 1
//    for _ in 1...columns {
//        for _ in 1...columns {
//            if num <= 25 {
//                print(num, terminator: " ")
//                num += 1
//            }
//        }
//        print()
//    }
//}
func printSquare(columns: Int) -> Array<Array<Int>> {
    var outerArray = Array<Array<Int>>()
    var number = 1
    for _ in 1...((25 / columns) + 1) {
        var innerArray = Array<Int>()
        for _ in 1...columns {
            if number <= 25 {
                innerArray.append(number)
                number += 1
            }
        }
        outerArray.append(innerArray)
    }
    return outerArray
}

// 미션5-3. printReverse()
//func printReverse(lines: Int) {
//    var number = 1
//    for index in 1...lines {
//        if index % 2 != 0 {
//            for _ in 1...lines {
//                print(number, terminator: " ")
//                number += 1
//            }
//        } else {
//            number = index * lines
//            for _ in 1...lines {
//                print(number, terminator: " ")
//                number -= 1
//            }
//            number = (index * lines) + 1
//        }
//        print()
//    }
//}
func printReverse(lines: Int) -> Array<Array<Int>> {
    var outerArray = Array<Array<Int>>()
    var number = 1
    for index in 1...lines {
        var innerArray = Array<Int>()
        if index % 2 != 0 {
            for _ in 1...lines {
                innerArray.append(number)
                number += 1
            }
        } else {
            number = index * lines
            for _ in 1...lines {
                innerArray.append(number)
                number -= 1
            }
            number = (index * lines) + 1
        }
        outerArray.append(innerArray)
    }
    return outerArray
}
