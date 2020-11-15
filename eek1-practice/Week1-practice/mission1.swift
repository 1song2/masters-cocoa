//
//  mission1.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션1. printXY()


func printXY(max : Int) {
    for _ in 1...max {
        for i in 1...max {
            print(i, terminator: " ")
        }
        print()
    }
}

//func printXY(max : Int) {
//    let space: String = " "
//    for _ in 1...max {
//        var row: String = ""
//        for i in 1...max {
//            if i == 1 {
//                row += "\(i)"
//            } else {
//                row += "\(space)\(i)"
//            }
//        }
//        print(row)
//    }
//}

//func printXY(max : Int) {
//    let space: String = " "
//    for _ in 1...max {
//        var row: [String] = []
//        for i in 1...max {
//            if i == 1 {
//                row.append("\(i)")
//            } else {
//                row.append(space)
//                row.append("\(i)")
//            }
//        }
//        print(row.joined())
//    }
//}
