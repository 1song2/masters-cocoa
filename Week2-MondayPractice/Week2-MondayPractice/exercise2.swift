//
//  exercise2.swift
//  Week2-MondayPractice
//
//  Created by Song on 2020/11/10.
//

import Foundation

// 연습문제2. 아이디 규칙 검사
func IDValidator(password: String) -> Bool {
    //let regex = try! NSRegularExpression(pattern: ".*[^A-Za-z0-9-].*")
    let regex = try! NSRegularExpression(pattern: "^[A-Za-z0-9-]{5,23}$")
    if regex.firstMatch(in: password, options: [], range: NSRange(location: 0, length: password.utf16.count)) != nil {
        return true
    }
    return false
}

//print(IDValidator(password: "########"))
