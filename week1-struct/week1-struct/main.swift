//
//  main.swift
//  week1-struct
//
//  Created by Song on 2020/11/03.
//

import Foundation

//MARK: - 연습문제1
// 미션1. Rectangle
/// Playground로 Rectangle struct를 만들어보세요.
/// Int 형 leftTopX, leftTopY 변수를 추가하세요.
/// Int 형 rightBottomX, rightBottomY 변수를 추가하세요.
/// 4개의 꼭지점을 출력하는 printRect() 메서드를 선언하세요.
// 미션2. 호출하기
/// 아래에서 Rectangle struct를 rect 변수로 선언하고
/// 기본 제공하는 leftTopX, leftTopY, rightBottomX, rightBottomY 모두 초기화하는 메서드로 값을 지정하세요.
/// printRect() 메서드를 호출해서 꼭지점 좌표를 출력하세요.
// 미션3. printArea()
/// 사각형의 면적을 계산해서 출력하는 printArea() 메서드를 추가하세요.
/// 아래에서 printArea() 메서드를 호출하세요.
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

var rect = Rectangle(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)
rect.printRect()
rect.printArea()

// 미션4. Float형
/// 사각형 좌표를 Float 형으로 바꿔보세요.
/// printRect() 메서드를 호출하세요.
// 미션5. center
/// 사각형의 중점(center)를 계산해서 float 형으로 출력하는 printCenter() 메서드를 추가하세요.
/// 아래에서 printCenter() 메서드를 호출하세요.
struct Rectangle {
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

var rect = Rectangle(leftTopX: 4.5, leftTopY: 10.5, rightBottomX: 15.0, rightBottomY: 3.5)
rect.printRect()
rect.printCenter()


//MARK: - 연습문제2

// 미션1. MyPoint
/// MyPoint struct를 만들어보세요.
/// Float 형 myX, myY 변수를 추가하세요.
/// (x,y)형태로 좌표를 출력하는 printPoint() 메서드를 만드세요.
/// MyPoint struct 인스턴스를 pointA로 선언하고
/// 초기화 메서드로 (2.5f,15.8f)값을 넘기고
/// printPoint()를 호출해서 좌표를 출력하세요.

// 미션2. 메소드 추가하기
/// setX(x : Float) 메서드와 setY(y: Float) 메서드를 추가하세요.
/// setX는 myX값을 x로 바꾸고, setY는 myY값을 y로 바꾸세요.
/// setX(x:15.2)와 setY(y:7.4)를 호출하세요.
/// 직접 print(“pointA=( )”) 형태로 x와 y 값을 가져와서 출력하세요.

// 미션3. 계산하기
/// 다른 점과의 거리를 계산하기 위해서 getDistanceTo(toPoint : MyPoint)->Float 메서드를 추가하세요.
/// - Float sqrt(Float) 함수 사용
/// 새로운 점(15f, 12.2f) pointB 인스턴스를 추가하고
/// getDistanceTo() 메서드에 매개변수로 넘겨 결과값을 출력하세요.

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

var pointA = MyPoint(myX: 2.5, myY: 15.8)
pointA.printPoint()
pointA.setX(x: 15.2)
pointA.setY(y: 7.4)

print("pointA = (x: \(pointA.myX), y: \(pointA.myY))")

var pointB = MyPoint(myX: 15, myY: 12.2)
print(pointA.getDistanceTo(toPoint: pointB))


//MARK: - 연습문제3

// 미션1. MyPoint로 바꾸기
/// 이전에 만든 Rectangle struct를 MyPoint 구조체를 사용하도록 개선해봅시다.
/// Float leftTop-X, -Y 대신 MyPoint leftTop으로
/// Float rightBottom-X, -Y 대신 MyPoint rightBottom 으로 대체하고
/// 기본 생성자에서 각 좌표의 초기값을 (0,0) 으로 설정하세요.
/// rect 테스트했던 메서드를 그대로 실행해보세요.
/// 안되는 부분을 수정해보세요.

// 미션2. printPoints() 구현하기
/// 추가 생성자로 MyPoint형 원점(x,y) 좌표와
/// 길이 Float width 와 높이 Float height 를 넘겨
/// 사각형을 만드는 메서드를 만드세요.
/// 원점에 해당하는 MyPoint 인스턴스 (5,5)를 추가하고
/// 추가 생성자에 길이는 5f, 10f 넘겨 새로운 사각형 rectB 객체를 생성하세요.
/// rectB.printPoint()를 호출해서 좌표를 출력하세요.

// 미션3. moveTo() 구현하기
/// 이전에 만든 Rectangle 클래스에 원하는 delta 값만큼 위치 이동하는 moveTo(delta: MyPoint)메서드를 추가하세요.
/// rectB.moveTo(delta: (-3f, 1.5f)) 메서드를 호출하고 이동한 사각형 좌표를 printRect()로 확인하세요.

struct Rectangle {
    var leftTop: MyPoint
    var rightBottom: MyPoint
    
    init() {
        leftTop = MyPoint(myX: 0.0, myY: 0.0)
        rightBottom = MyPoint(myX: 0.0, myY: 0.0)
    }
    
    func printRect() {
        print("leftTop = (\(self.leftTop.myX), \(self.leftTop.myY)), leftBottom = (\(self.leftTop.myX), \(self.rightBottom.myY)), rightBottom = (\(self.rightBottom.myX), \(self.rightBottom.myY)), rightTop = (\(self.rightBottom.myX), \(self.leftTop.myY))")
    }
    
    func printArea() {
        let width = self.rightBottom.myX - self.leftTop.myX
        let height = self.leftTop.myY - self.rightBottom.myY
        print("area = \(width * height)")
    }
    
    //    func area() -> Float {
    //        let width = self.rightBottom.x - self.leftTop.x
    //        let height = self.leftTop.y - self.rightBottom.y
    //        return width * height
    //    }
    
    func printCenter() {
        let centerX = (self.leftTop.myX + self.rightBottom.myX) / 2
        let centerY = (self.leftTop.myY + self.rightBottom.myY) / 2
        print("center = (\(centerX), \(centerY))")
    }
    
    //    func drawRectangle(origin: MyPoint, width: Float, height: Float) -> Rectangle {
    //        let newLeftTop = MyPoint(myX: origin.myX, myY: origin.myY + height)
    //        let newRightBottom = MyPoint(myX: origin.myX + width, myY: origin.myY)
    //        return Rectangle(leftTop: newLeftTop, rightBottom: newRightBottom)
    //    }
    
    init(origin: MyPoint, width: Float, height: Float) {
        leftTop = MyPoint(myX: origin.myX, myY: origin.myY + height)
        rightBottom = MyPoint(myX: origin.myX + width, myY: origin.myY)
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

//var rect = Rectangle(leftTop: MyPoint(myX: 4.5, myY: 10.5), rightBottom: MyPoint(myX: 15, myY: 3.5))
var rect = Rectangle()

rect.printRect()
rect.printArea()
rect.printCenter()

var o = MyPoint(myX: 5.0, myY: 5.0)

//var rectB = rect.drawRectangle(origin: o, width: 5.0, height: 10.0)
var rectB = Rectangle(origin: o, width: 5.0, height: 10.0)
rectB.printPoints()
rectB.moveTo(delta: MyPoint(myX: -3, myY: 1.5))
rectB.printRect()


//MARK: - 연습문제 (학점)

func whatIsGrade(point : Int) -> Character {
    //90점 이상
    if point >= 90 {
        return "A"
    }
    //90점 미만 80점 이상
    //else if point < 90 && point >= 80 {
    else if point >= 80 {
        return "B"
    }
    //80점 미만 70점 이상
    else if point >= 70 {
        return "C"
    }
    //70점 미만 60점 이상
    else if point >= 60 {
        return "D"
    }
    //60점 미만
    else {
        return "F"
    }
}

//MARK: - 연습문제 (구구단)

func gugu(dan : Int) {
    // dan 값에 1 ~ 9까지 곱해서 출력하세요
    for i in 1...9 {
        print(dan * i)
    }
}

func makeAll() {
    // gugu() 함수를 1~9단까지 호출하세요
    for time in 1...9 {
        gugu(dan: time)
    }
}

func makeGugu(maxDan : Int) {
    // 1단부터 maxDan까지 값에 1 ~ 9까지 곱해서 출력하세요
    for time in 1...maxDan {
        gugu(dan: time)
    }
}
