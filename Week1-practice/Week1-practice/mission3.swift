//
//  mission3.swift
//  Week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션3. printRightTree()


func printRightTree(lines : Int) {
    let emoji = "🎈"
    var emojiPerRow = emoji
    let space: String = " "
    var row: String = ""
    for i in 1...lines {
        let numOfSpace = lines - i
        let spaceBeforeEmoji = String(repeating: space, count: numOfSpace)
        row = spaceBeforeEmoji + emojiPerRow
        print(row)
        emojiPerRow += emoji
    }
}

