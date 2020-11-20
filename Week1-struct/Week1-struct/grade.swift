//
//  Grade.swift
//  Week1-struct
//
//  Created by Song on 2020/11/20.
//

import Foundation

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
