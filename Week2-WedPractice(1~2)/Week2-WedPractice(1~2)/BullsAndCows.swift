//
//  BullsAndCows.swift
//  Week2-WedPractice(1~2)
//
//  Created by Song on 2020/11/11.
//

import Foundation

struct BullsAndCows {
    //var secretNumber: Array<Int>
    
    func newGame() {
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
                //print(numbersArray)
                randomNumber = numbersArray.randomElement() ?? 0
                threeDigitNumbers.append(randomNumber)
            }
        }
        //print(threeDigitNumbers)
    }
    
    func hit(num: Int) -> (strikeCount: Int, ballCount: Int) {
        //
        return (strikeCount: 3, ballCount: 0)
    }
    
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
                //print(numbersArray)
                randomNumber = numbersArray.randomElement() ?? 0
                threeDigitNumbers.append(randomNumber)
            }
        }
        return threeDigitNumbers[0] * 100 + threeDigitNumbers[1] * 10 + threeDigitNumbers[2] * 1
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
