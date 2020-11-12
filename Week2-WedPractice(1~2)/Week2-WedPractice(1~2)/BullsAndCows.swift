//
//  BullsAndCows.swift
//  Week2-WedPractice(1~2)
//
//  Created by Song on 2020/11/11.
//

import Foundation

struct BullsAndCows {
    var secretNumber: Int = 0
    
    mutating func newGame() {
        var secretNumberSet = Set<Int>()
        while secretNumberSet.count < 3 {
            secretNumberSet.insert(Int.random(in: 0...9))
        }
        if let safeNumber = Int(secretNumberSet.map({ String($0) }).joined()) {
            secretNumber = safeNumber
        }
        print("Secret Number: \(secretNumber)")
        print("새 게임을 시작합니다. 세자리 숫자를 입력해주세요.")
    }
    
    func hit(num: Int) -> (strikeCount: Int, ballCount: Int) {
        // 아직 구현 중
        // secretNumber와 num 매개변수 쪼개서 각 자리마다 비교?        
        
        return (strikeCount: 3, ballCount: 0)
    }
    
    func showGameScore() -> Bool {
        var scoresArray = Array<(strikeCount: Int, ballCount: Int)>()
        for _ in 1...9 {
            scoresArray.append(hit(num: Int(userInputNumber) ?? 0))
        }
        let has3S0B = scoresArray.contains { $0 == (strikeCount: 3, ballCount: 0) }
        return has3S0B
    }
    
    func getSeparateDigits(number: Int) -> (hundreds: Int, tens: Int, unit: Int) {
        return (hundreds: number / 100, tens: (number / 10) % 10, unit: number % 10)
    }
}
