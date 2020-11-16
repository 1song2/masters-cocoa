//
//  exercise1 - Matrix.swift
//  Week3-MonPractice
//
//  Created by Song on 2020/11/16.
//

import Foundation

class Matrix {
    var a: Double
    var b: Double
    var c: Double
    var d: Double
    
    /// 초기화 메스드 구현
    /// 매개변수에 default 값 지정
    init(a: Double = 0.0, b: Double = 0.0, c: Double = 0.0, d: Double = 0.0) {
        self.a = a
        self.b = b
        self.c = c
        self.d = d
    }
    
    func sum(with other: Matrix) -> Matrix {
        let sumMatrix = Matrix()
        sumMatrix.a = self.a + other.a
        sumMatrix.b = self.b + other.b
        sumMatrix.c = self.c + other.c
        sumMatrix.d = self.d + other.d
        return sumMatrix
    }
    
    func product(with other: Matrix) -> Matrix {
        let productMatrix = Matrix()
        productMatrix.a = (self.a * other.a) + (self.b * other.c)
        productMatrix.b = (self.a * other.b) + (self.b * other.d)
        productMatrix.c = (self.c * other.a) + (self.d * other.c)
        productMatrix.d = (self.c * other.b) + (self.d * other.d)
        return productMatrix
    }
}
