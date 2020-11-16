//
//  mission2.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션2. printLeftTree()

func printLeftTree(lines : Int) {
    let emoji = "🎈"
    for i in 1...lines {
        for _ in 1...i {
            print(emoji, terminator: "")
        }
        print()
    }
}

//func printLeftTree(lines : Int, character: String) {
//    let char = character
//    var row: String = ""
//    for _ in 1...lines {
//        row += char
//        print(row)
//    }
//}

//func printLeftTree(lines : Int) {
//    let emoji = "🎈"
//    var row: [String] = []
//    for _ in 1...lines {
//        row.append(emoji)
//        print(row.joined())
//    }
//}
