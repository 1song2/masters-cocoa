//
//  BullsAndCows.swift
//  Week2-WedPractice(1~2)
//
//  Created by Song on 2020/11/11.
//

import Foundation

struct BullsAndCows {
    var secretNumber: Int
    
    func makeRandom3DigitNumbers() -> Int {
        var numbersArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        var threeDigitNumbers = Array<Int>()
        for _ in 1...3 {
            var randomNumber = numbersArray.randomElement() ?? 0
            if !threeDigitNumbers.contains(randomNumber) {
                threeDigitNumbers.append(randomNumber)
            } else {
                numbersArray = numbersArray.filter { (number) -> Bool in
                    number != randomNumber
                }
                randomNumber = numbersArray.randomElement() ?? 0
                threeDigitNumbers.append(randomNumber)
            }
        }
        return threeDigitNumbers[0] * 100 + threeDigitNumbers[1] * 10 + threeDigitNumbers[2] * 1
    }
    
    mutating func newGame() {
        secretNumber = makeRandom3DigitNumbers()
    }
    
    func hit(num: Int) -> (strikeCount: Int, ballCount: Int) {
        // 아직 구현 못함
        // secretNumber와 num 매개변수 array로 쪼개서 각 자리마다 비교?
        
        return (strikeCount: 3, ballCount: 0)
    }
    
    func showGameScore() -> Bool {
        var scoresArray = Array<(strikeCount: Int, ballCount: Int)>()
        for _ in 1...9 {
            scoresArray.append(hit(num: makeRandom3DigitNumbers()))
        }
        let has3S0B = scoresArray.contains { $0 == (strikeCount: 3, ballCount: 0) }
        return has3S0B
    }
}
