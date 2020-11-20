//
//  main.swift
//  Week1-struct
//
//  Created by Song on 2020/11/03.
//

import Foundation

//MARK: - 연습문제1
var rect = Rectangle(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)
rect.printRect()
rect.printArea()
print()

var rect2 = Rectangle2(leftTopX: 4.5, leftTopY: 10.5, rightBottomX: 15.0, rightBottomY: 3.5)
rect2.printRect()
rect2.printCenter()
print()

//MARK: - 연습문제2
var pointA = MyPoint(myX: 2.5, myY: 15.8)
pointA.printPoint()
pointA.setX(x: 15.2)
pointA.setY(y: 7.4)
print("pointA = (x: \(pointA.myX), y: \(pointA.myY))")
print()

var pointB = MyPoint(myX: 15, myY: 12.2)
print(pointA.getDistanceTo(toPoint: pointB))
print()

//MARK: - 연습문제3
var rect3 = Rectangle3()
rect3.printRect()
rect3.printArea()
rect3.printCenter()
print()

var o = MyPoint(myX: 5.0, myY: 5.0)
var rectB = Rectangle3(origin: o, width: 5.0, height: 10.0)
rectB.printPoints()
rectB.moveTo(delta: MyPoint(myX: -3, myY: 1.5))
rectB.printRect()
print()

//MARK: - 연습문제 (학점)
print(whatIsGrade(point: 96))
print()

//MARK: - 연습문제 (구구단)
gugu(dan: 3)
print()

makeAll()
print()

makeGugu(maxDan: 5)
