//
//  main.swift
//  Week1-MonPractice
//
//  Created by Song on 2020/11/20.
//

import Foundation

//연습문제 - 단위 변환 함수 만들기

//MARK: - 미션1: inch를 cm로 바꾸는 함수
func convertToCM(fromInches: Float) -> Float {
    let convertedCM = fromInches * 2.54
    return convertedCM
}
//let convertToCM: (Float) -> Float = {fromInches in return fromInches * 2.54}
//let convertToCM = { (fromInches: Float) -> Float in return fromInches * 2.54 }
let convertToCM = { $0 * 2.54 }

print("미션1: inch를 cm로 바꾸는 함수")
print("\(convertToCM(fromInches: 50))cm") // 127.0cm
print("\(convertToCM(fromInches: 15))cm") // 38.1cm
print("\(convertToCM(50))cm")
print("\(convertToCM(15))cm")
print()

//MARK: - 미션2: cm를 inch로 바꾸는 함수
func convertToInches(fromCM: Float) -> Float {
    let convertedInch = fromCM / 2.54
    return convertedInch
}
//let convertToInches: (Float) -> Float = { fromCM in return fromCM / 2.54 }
//let convertToInches = { (fromCM: Float) -> Float in return fromCM / 2.54 }
//let convertToInches = { $0 / 2.54 }

print("미션2: cm를 inch로 바꾸는 함수")
print("\(convertToInches(fromCM: 254))inch") // 100.0inch
print("\(convertToInches(fromCM: 75))inch")  // 29.52756inch
//print("\(convertToInches(254))inch")
//print("\(convertToInches(75))inch")
print()

//MARK: - 미션3: m를 inch로 바꾸는 함수
func convertToInches(fromMeter: Float) -> Float {
    let convertedInch = fromMeter * 100 / 2.54
    return convertedInch
}
//let convertToInches: (Float) -> Float = { fromMeter in return fromMeter * 100 / 2.54 }
//let convertToInches = { (fromMeter: Float) -> Float in return fromMeter * 100 / 2.54 }
let convertToInches = { $0 * 100 / 2.54 }

//print("미션3: m를 inch로 바꾸는 함수")
print("\(convertToInches(fromMeter: 1.5))inch") // 59.05512inch
print("\(convertToInches(fromMeter: 0.4))inch") // 15.748032inch
print("\(convertToInches(1.5))")
print("\(convertToInches(0.4))")
print()

//MARK: - 추가미션

func conversionCalculator(inputValue: String) -> Float {
    let inputArray: [String] = inputValue.components(separatedBy: " ")
    let unitArray = ["cm", "m", "inch"]
    var fromNumber: Float = 0.0
    var fromUnit = ""
    
    /// forEach로 수정 시도
    /// 결과 실패: 이유 - forEach에서는 break 사용할 수 없음
    for unit in unitArray {
        if inputArray[0].contains(unit) {
            fromUnit = unit
            fromNumber = Float(inputArray[0].replacingOccurrences(of: unit, with: "")) ?? 0.0
            /// "cm"와 "m"는 겹치는 요소가 있으므로 "cm"를 포함하고 있는 inputArray[0]은 다시 for문을 돌지 않게 하기 위함
            /// break를 주지 않으면 "18cm"는 최종 "18c"로 리턴되어 Float으로 변환이 불가능
            break
        }
    }
    
    if inputArray.count == 2 {
        let toUnit = inputArray[1]
        switch (fromUnit, toUnit) {
        case ("cm", "inch"):
            return convertToInches(fromCM: fromNumber)
        case ("inch", "m"):
            return convertToCM(fromInches: fromNumber) / 100
        case ("m", "inch"):
            return convertToInches(fromCM: fromNumber * 100)
        default:
            return 0.0
        }
    } else {
        switch fromUnit {
        case "cm":
            return fromNumber / 100
        case "m":
            return fromNumber * 100
        case "inch":
            return convertToCM(fromInches: fromNumber)
        default:
            return 0.0
        }
    }
}

print(conversionCalculator(inputValue: "18cm inch"))  // 7.086614inch
print(conversionCalculator(inputValue: "25.4inch m")) // 0.64515996m
print(conversionCalculator(inputValue: "0.5m inch"))  // 19.68504inch
print(conversionCalculator(inputValue: "183cm"))      // 1.83m
print(conversionCalculator(inputValue: "3.14m"))      // 314.0cm
print(conversionCalculator(inputValue: "2.54inch"))   // 6.4515996cm
