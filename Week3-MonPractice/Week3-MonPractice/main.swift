//
//  main.swift
//  Week3-MonPractice
//
//  Created by Song on 2020/11/16.
//

import Foundation

var myMatrix = Matrix(a: 1.0, b: 2.0, c: 3.0, d: 4.0)
var otherMatrix = Matrix(a: 4.0, b: 3.0, c: 2.0, d: 1.0)
let sumResult = myMatrix.sum(with: otherMatrix)
let productResult = myMatrix.product(with: otherMatrix)

// 연습 문제 1.
//print("행렬 계산 클래스")
//print("sumResult")
//print(sumResult.a, sumResult.b)
//print(sumResult.c, sumResult.d)
//print()
//print("productResult")
//print(productResult.a, productResult.b)
//print(productResult.c, productResult.d)
//print()

// 연습 문제 2.
print("특별한 이진수 나타내는 구조체")
var myBinaryNumber = BinaryNumber.init(with: 5)
print("count = \(myBinaryNumber.count)")
print(myBinaryNumber.find(by: 3))
