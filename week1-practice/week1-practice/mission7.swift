//
//  mission7.swift
//  week1-practice
//
//  Created by Song on 2020/11/04.
//

import Foundation

// 미션9. print3515()

func clap369(lines : Int) -> Array<String> {
    var array: Array<String> = []
    for i in 1...lines {
        var j = ""
        if i % 15 == 0 {
            j = "👏🏼🙏"
        } else if i % 3 == 0 {
            j = "👏🏼"
        } else if i % 5 == 0 {
            j = "🙏"
        } else {
            j = "\(i)"
        }
        array.append(j)
    }
    return array
}
