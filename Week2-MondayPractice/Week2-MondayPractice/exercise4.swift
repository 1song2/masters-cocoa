//
//  exercise4.swift
//  Week2-MondayPractice
//
//  Created by Song on 2020/11/09.
//

import Foundation

//연습문제4. 주민번호 판별검사
func RRNValidator(RRN: String) -> Bool {
    var array = Array<Int>()
    for index in RRN.indices {
        array.append(RRN[index].wholeNumberValue!)
    }
    var n = 2
    var N = 0
    for index in 0..<(array.count - 1) {
        N += array[index] + n
        if n == 9 {
            n = 2
        } else {
            n += 1
        }
    }
    let K = (11 - (N % 11)) % 10
    if K == array[array.count - 1] {
        return true
    }
    return false
}
