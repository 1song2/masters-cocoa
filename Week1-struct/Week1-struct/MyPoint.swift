//
//  MyPoint.swift
//  Week1-struct
//
//  Created by Song on 2020/11/20.
//

import Foundation

// 미션1. MyPoint
// 미션2. 메소드 추가하기
// 미션3. 계산하기
struct MyPoint {
    var myX: Float
    var myY: Float

    func printPoint() {
        print("(x: \(self.myX), y: \(self.myY))")
    }

    mutating func setX(x: Float) {
        self.myX = x
    }

    mutating func setY(y: Float) {
        self.myY = y
    }

    func getDistanceTo(toPoint : MyPoint) -> Float {
        let dx = (self.myX - toPoint.myX)
        let dy = (self.myY - toPoint.myY)
        return sqrt(dx * dx + dy * dy)
    }
}
