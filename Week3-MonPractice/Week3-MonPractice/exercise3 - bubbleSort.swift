//
//  exercise3 - bubbleSort.swift
//  Week3-MonPractice
//
//  Created by Song on 2020/11/16.
//

import Foundation

class BubbleSort {
    var unsortedArray: Array<Int>
    
    init(unsortedArray: Array<Int>) {
        self.unsortedArray = unsortedArray
    }
    
    func sorted(isAscending: Bool) -> Array<Int> {
        var copyArray = unsortedArray
        func swap(aIndex: Int, bIndex: Int) {
            let aIndexValue = copyArray[aIndex]
            let bIndexValue = copyArray[bIndex]
            if isAscending {
                if copyArray[aIndex] > copyArray[bIndex] {
                    copyArray[aIndex] = bIndexValue
                    copyArray[bIndex] = aIndexValue
                }
            } else {
                if copyArray[aIndex] < copyArray[bIndex] {
                    copyArray[aIndex] = bIndexValue
                    copyArray[bIndex] = aIndexValue
                }
            }
        }
        for _ in 1..<copyArray.count {
            for index in 0..<(copyArray.count - 1) {
                swap(aIndex: index, bIndex: index + 1)
            }
        }
        return copyArray
    }
}
