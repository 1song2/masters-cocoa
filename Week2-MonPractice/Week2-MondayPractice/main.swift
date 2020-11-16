//
//  main.swift
//  Week2-MondayPractice
//
//  Created by Song on 2020/11/09.
//

import Foundation

// 연습문제1 - 배열
/// 미션1
//print("2차원 배열만들기 & 출력하기")
//var myArray = ArrayPractice()
//myArray.printArray(array:myArray.fillArray())
//print()

/// 미션2
//print("setBoolArray와 printArray")
//var myBoolArray = BoolArray()
//myBoolArray.printArray(array: myBoolArray.setBoolArray(), newChar: "$")
//print()

/// 미션3
print("마방진")
var myMagicSquare = MagicSquare()
//myMagicSquare.printMagicSquare(myMagicSquare.makeMagicSquare(row: 3))

struct MagicSquare {
    func makeMagicSquare(row: Int) -> Array<Array<Int>> {
        var innerArray = Array(repeating: Int(), count: row)
        var outerArray = Array(repeating: innerArray, count: row)
        var y = 0
        var x = row / 2
        outerArray[y][x] = 1
        for number in 2...(row * row) {
            y -= 1
            x += 1
            outerArray[y % row][x % row] = number
        }
        //row * row만큼 숫자 채워나가기
        //1은 (1,0)에서 시작
        //좌표가 (x, y)라고 하면
        //x += 1, y -= 1씩 이동
        //[0, 1, 2]
        //+= 혹은 -= 해준 후 나머지 연산한 값이 새로운 좌표
        return outerArray
    }
    
    func printMagicSquare(_ array: Array<Array<Int>>) {
        //
    }
}

print(myMagicSquare.makeMagicSquare(row: 3))

// 연습문제4. 주민번호 판별검사
//print(RRNValidator(RRN: "1234561234567"))
//print()

// 연습문제6. 사전(Dictionary) 활용하기
//print(duplicatedWords(inputWords: ["가을", "우주", "너굴", "우주", "겨울", "봄봄", "너굴", "너굴"]))
