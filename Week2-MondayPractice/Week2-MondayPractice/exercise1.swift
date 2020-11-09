//
//  exercise1.swift
//  Week2-MondayPractice
//
//  Created by Song on 2020/11/09.
//

import Foundation

// 미션1. 2차원 배열만들기 & 출력하기
struct ArrayPractice {
    func printArray(array: Array<Array<Int>>) {
        for index in 0...4 {
            print(array[index])
        }
    }
    
    func fillArray() -> Array<Array<Int>> {
        var outerArray = Array<Array<Int>>()
        for index in 0...4 {
            var innerArray = Array<Int>()
            var number = (index * (4 + 1)) + 1
            for _ in 0...index {
                innerArray.append(number)
                number += 1
            }
            outerArray.append(innerArray)
        }
        return outerArray
    }
}
