//
//  mission6.swift
//  week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션6. printDiamon()

func printDiamond(lines : Int) {
    let star = "*"
    let space: String = " "
    var row: String = ""
    var starPerRow = ""
    var spaceBeforeStar: String {
        String(repeating: space, count: spaceBeforeStarNumber)
    }
    var spaceBeforeStarNumber = 0
    var middleRow = 0
    var maxStarNumber = 0
    var totalSpaceNumber: Int {
        spaceBeforeStarNumber * 2
    }
    
    for i in 1...lines {
        // lines가 짝수일 때
        if lines % 2 == 0 {
            middleRow = lines / 2
            maxStarNumber = lines - 1
            if i < middleRow {
                spaceBeforeStarNumber = middleRow - i
            } else if i > (middleRow + 1) {
                spaceBeforeStarNumber = i - middleRow - 1
            } else {
                spaceBeforeStarNumber = 0
            }
            //starPerRow = String(repeating: star, count: maxStarNumber - totalSpaceNumber)
            starPerRow = String(repeating: star, count: maxStarNumber - totalSpaceNumber)
        // lines가 홀수일 때
        } else {
            middleRow = (lines + 1) / 2
            maxStarNumber = lines
            if i < middleRow {
                spaceBeforeStarNumber = middleRow - i
            } else if i > middleRow {
                spaceBeforeStarNumber = i - middleRow
            } else {
                spaceBeforeStarNumber = 0
            }
            starPerRow = String(repeating: star, count: maxStarNumber - totalSpaceNumber)
        }
        row = spaceBeforeStar + starPerRow
        print(row)
    }
}
