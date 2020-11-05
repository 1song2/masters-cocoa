//
//  mission5.swift
//  week1-practice
//
//  Created by Song on 2020/11/05.
//

import Foundation

// 미션5-1. printNumbers()
func printNumbers(lines : Int) {
    var numb: Int = 1
    for i in 1...lines {
        for _ in 1...i {
            print(numb, terminator: " ")
            numb += 1
        }
        print()
    }
}

// 미션5-2. printSquare()
func printSquare(columns : Int) {
    var num: Int = 1
    for _ in 1...columns {
        for _ in 1...columns {
            if num <= 25 {
                print(num, terminator: " ")
                num += 1
            }
        }
        print()
    }
}



// 미션5-3. printReverse()
func printReverse(lines : Int) {
    var num: Int = 1
    for i in 1...lines {
        if i % 2 != 0 {
            for _ in 1...lines {
                print(num, terminator: " ")
                num += 1
            }
        } else {
            num = lines * i
            for _ in 1...lines {
                print(num, terminator: " ")
                num -= 1
            }
            num = (lines * i) + 1
        }
        print()
    }
}
