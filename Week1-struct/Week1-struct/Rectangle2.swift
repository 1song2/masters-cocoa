//
//  Rectangle2.swift
//  Week1-struct
//
//  Created by Song on 2020/11/20.
//

import Foundation

// 미션4. Float형
// 미션5. center
struct Rectangle2 {
    var leftTopX: Float
    var leftTopY: Float
    var rightBottomX: Float
    var rightBottomY: Float

    func printRect() {
        print("leftTop = (\(self.leftTopX), \(self.leftTopY)), leftBottom = (\(self.leftTopX), \(self.rightBottomY)), rightBottom = (\(self.rightBottomX), \(self.rightBottomY)), rightTop = (\(self.rightBottomX), \(self.leftTopY))")
    }

    func printArea() {
        let width = self.rightBottomX - self.leftTopX
        let height = self.leftTopY - self.rightBottomY
        print("area = \(width * height)")
    }

    func printCenter() {
        let centerX = (self.leftTopX + self.rightBottomX) / 2
        let centerY = (self.leftTopY + self.rightBottomY) / 2
        print("center = (\(centerX), \(centerY))")
    }
}
