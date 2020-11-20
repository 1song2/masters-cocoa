//
//  Gugu.swift
//  Week1-struct
//
//  Created by Song on 2020/11/20.
//

import Foundation

//func gugu(dan: Int) {
//    for i in 1...9 {
//        print(dan * i)
//    }
//}
//func gugu(dan: Int) {
//    (1...9).forEach { number in
//        print(dan * number)
//    }
//}
func gugu(dan: Int) {
    (1...9).forEach { print($0 * dan) }
}

//func makeAll() {
//    for time in 1...9 {
//        gugu(dan: time)
//    }
//}
//func makeAll() {
//    (1...9).forEach { time in
//        gugu(dan: time)
//        print()
//    }
//}
func makeAll() {
    (1...9).forEach { gugu(dan: $0)
        print() }
}

//func makeGugu(maxDan: Int) {
//    for time in 1...maxDan {
//        gugu(dan: time)
//    }
//}
//func makeGugu(maxDan: Int) {
//    (1...maxDan).forEach { time in
//        gugu(dan: time)
//        print()
//    }
//}
func makeGugu(maxDan: Int) {
    (1...maxDan).forEach { gugu(dan: $0)
        print()
    }
}
