//
//  exercise1.swift
//  Week2-MondayPractice
//
//  Created by Song on 2020/11/09.
//

import Foundation

// 연습문제1 - 배열
/// 미션1. 2차원 배열만들기 & 출력하기
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


///// 미션2. setBoolArray와 printArray
struct BoolArray {
    // for문 한번만 돌리도록 setBoolArray() 수정
    func setBoolArray() -> Array<Array<Bool>> {
        var outerArray = Array<Array<Bool>>()
        var innerArray = Array<Bool>()
        for index in 0...6 {
            let falseArray =  Array(repeating: false, count: 7 - index - 1)
            let trueArray = Array(repeating: true, count: index + 1)
            innerArray = falseArray + trueArray
            outerArray.append(innerArray)
        }
        return outerArray
    }

    // for문 한번만 돌리도록 printArray() 수정
    func printArray(array: Array<Array<Bool>>, newChar: Character) {
        for index in 0...6 {
            print(String(array[index].map { $0 ? newChar : " " }))
        }
    }
}
