//
//  exercise4.swift
//  Week2-MondayPractice
//
//  Created by Song on 2020/11/09.
//

import Foundation

//연습문제4. 주민번호 판별검사
//문제정의 : 주민등록번호 13자리를 문자열(-는 제외)로 입력받아
//정상적인 검사해서 결과를 참-거짓으로 출력하는 함수
//
//
//앞에서부터 12자리에 2~9, 2~5 각각의 상수값을 곱해서 전체를 더한다.
//전체 더한 숫자를 11로 나눈 나머지를 구한다.
//나머지 숫자를 11에서 빼서 10으로 나눈다.
//위에서 구한 숫자와 마지막 13번째 자리가 같은지 비교한다.

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
