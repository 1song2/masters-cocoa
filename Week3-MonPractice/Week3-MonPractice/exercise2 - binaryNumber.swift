//
//  exercise2 - binaryNumber.swift
//  Week3-MonPractice
//
//  Created by Song on 2020/11/16.
//

import Foundation

struct BinaryNumber {
    private var values: Array<String>
    /// computed property
    var count: Int {
        return values.count
    }
    /// 초기화 생성 함수 (전체 비트 개수는 length of bit string 지칭)
    init(with total: Int) {
        var newValues = Array<String>()
        let numberOfValues = NSDecimalNumber(decimal: pow(2, total)).intValue
        for number in 0...(numberOfValues - 1) {
            if let binaryValue = Int(String(number, radix: 2)) {
                newValues.append(String(format: "%05d", binaryValue))
            }
        }
        values = newValues
    }
    
    func find(by bitcount: Int) -> Array<String> {
        let filteredArray = values.filter { $0.split(separator: "0").joined() == String(repeating: "1", count: bitcount) }
        return filteredArray
    }
}
