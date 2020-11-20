//
//  Rectangle.swift
//  Week1-struct
//
//  Created by Song on 2020/11/20.
//

import Foundation

// 미션1. Rectangle
// 미션2. 호출하기
// 미션3. printArea()
struct Rectangle {
    var leftTopX: Int
    var leftTopY: Int
    var rightBottomX: Int
    var rightBottomY: Int

    func printRect() {
        print("leftTop = (\(self.leftTopX), \(self.leftTopY)), leftBottom = (\(self.leftTopX), \(self.rightBottomY)), rightBottom = (\(self.rightBottomX), \(self.rightBottomY)), rightTop = (\(self.rightBottomX), \(self.leftTopY))")
    }

    func printArea() {
        let width = self.rightBottomX - self.leftTopX
        let height = self.leftTopY - self.rightBottomY
        print("area = \(width * height)")
    }
}
