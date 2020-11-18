//
//  main.swift
//  BalancedBrackets
//
//  Created by Song on 2020/11/18.
//

import Foundation

// 연습문제1
print("괄호쌍 맞추기 구조체")
enum Bracket {
    case round
    case square
    case curly
}

struct Brackets {
    var openingBracket: String
    var closingBracket: String
    
    init(with bracket: Bracket) {
        switch bracket {
        case .round:
            openingBracket = "("
            closingBracket = ")"
        case .square:
            openingBracket = "["
            closingBracket = "]"
        case .curly:
            openingBracket = "{"
            closingBracket = "}"
        }
    }
    
    func generate(with count: Int) -> Array<String> {
        var result = Array<String>()
        var stack = Array<String>()
        var openingBracketCount = 0
        var closingBracketCount = 0
        // 열고 닫고밖에 못해요...
        repeat {
            openingBracketCount += 1
            stack.append(openingBracket)
            closingBracketCount += 1
            stack.append(closingBracket)
        } while openingBracketCount != count && closingBracketCount != count
        result.append(stack.joined())
        return result
    }
    
    func analyze(with value: String) -> Bool {
        let stack = value.map { String($0) }
        var counting = 0
        // braket의 개수가 홀수인 경우
        if value.count % 2 != 0 {
            return false
        }
        // 마지막 bracket이 openingBracket인 경우
        if stack[stack.count - 1] == openingBracket {
            return false
        }
        for bracket in stack {
            if bracket == openingBracket {
                counting += 1
            } else {
                // closingBracket이 openingBracket 보다 많은 경우
                if counting < 1 {
                    return false
                } else {
                    counting -= 1
                }
            }
        }
        if counting == 0 {
            return true
        } else {
            return false
        }
    }
}

var myBrackets = Brackets(with: .curly)
print(myBrackets.generate(with: 2))
print(myBrackets.analyze(with: "{{}}"))
