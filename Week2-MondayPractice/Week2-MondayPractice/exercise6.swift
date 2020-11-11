//
//  exercise6.swift
//  Week2-MondayPractice
//
//  Created by Song on 2020/11/09.
//

import Foundation

// 연습문제6. 사전(Dictionary) 활용하기
func duplicatedWords(inputWords: Array<String>) -> Array<String> {
    var dictionary = [String: Int]()
    let countedSet = NSCountedSet(array: inputWords)
    for item in countedSet {
        /// 아래 두 줄은 같은 역할
        //dictionary[item as! String] = countedSet.count(for: item)
        dictionary.updateValue(countedSet.count(for: item), forKey: item as! String)
    }
    /// 아래 두 줄은 같은 역할
    //return Array(dictionary.filter { $1 >= 2 }.keys)
    return Array(dictionary.filter({ (dict) -> Bool in
        dict.value >= 2
    }).keys)
}
