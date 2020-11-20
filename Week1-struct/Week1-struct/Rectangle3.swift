//
//  Rectangle3.swift
//  Week1-struct
//
//  Created by Song on 2020/11/20.
//

import Foundation

// 미션1. MyPoint로 바꾸기
// 미션2. printPoints() 구현하기
// 미션3. moveTo() 구현하기
struct Rectangle3 {
    var leftTop: MyPoint
    var rightBottom: MyPoint

    init() {
        leftTop = MyPoint(myX: 0.0, myY: 0.0)
        rightBottom = MyPoint(myX: 0.0, myY: 0.0)
    }

    init(origin: MyPoint, width: Float, height: Float) {
        leftTop = MyPoint(myX: origin.myX, myY: origin.myY + height)
        rightBottom = MyPoint(myX: origin.myX + width, myY: origin.myY)
    }

    func printRect() {
        print("leftTop = (\(self.leftTop.myX), \(self.leftTop.myY)), leftBottom = (\(self.leftTop.myX), \(self.rightBottom.myY)), rightBottom = (\(self.rightBottom.myX), \(self.rightBottom.myY)), rightTop = (\(self.rightBottom.myX), \(self.leftTop.myY))")
    }

    func printArea() {
        let width = self.rightBottom.myX - self.leftTop.myX
        let height = self.leftTop.myY - self.rightBottom.myY
        print("area = \(width * height)")
    }

    func printCenter() {
        let centerX = (self.leftTop.myX + self.rightBottom.myX) / 2
        let centerY = (self.leftTop.myY + self.rightBottom.myY) / 2
        print("center = (\(centerX), \(centerY))")
    }

    func printPoints() {
        self.leftTop.printPoint()
        self.rightBottom.printPoint()
    }

    mutating func moveTo(delta: MyPoint) {
        leftTop = MyPoint(myX: self.leftTop.myX + delta.myX, myY: self.leftTop.myY + delta.myY)
        rightBottom = MyPoint(myX: self.rightBottom.myX + delta.myX, myY: self.rightBottom.myY + delta.myY)
    }
}
