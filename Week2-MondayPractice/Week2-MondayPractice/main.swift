//
//  main.swift
//  Week2-MondayPractice
//
//  Created by Song on 2020/11/09.
//

import Foundation

// 미션1. 2차원 배열만들기 & 출력하기
var myArray = ArrayPractice()
myArray.printArray(array:myArray.fillArray())
print()

// 미션2. setBoolArray와 printArray
var myBoolArray = BoolArray()
myBoolArray.printArray(array: myBoolArray.setBoolArray(), newChar: "$")
print()
