//
//  mission4.swift
//  week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션4. printCenterTree()


func printCenterTree(lines : Int) {
    let emoji = "🎈"
    var emojiPerRow = emoji
    let space: String = " "
    var row: String = ""
    
    for i in 1...lines {
        let spacePerRow = lines - i
        let spaceInRow = String(repeating: space, count: spacePerRow)
        row = spaceInRow + emojiPerRow
        print(row)
        emojiPerRow += (space + emoji)
    }
}
