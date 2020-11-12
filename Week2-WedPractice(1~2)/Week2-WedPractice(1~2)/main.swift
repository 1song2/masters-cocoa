//
//  main.swift
//  Week2-WedPractice(1~2)
//
//  Created by Song on 2020/11/11.
//

import Foundation

var mySavingAccount = InterestRate()

func testInterest(unitDay: Int) -> Double {
    var deposit = Double()
    for day in stride(from: 1, through: 365, by: unitDay) {
        deposit = mySavingAccount.calculateAmount(day: day, amount: 1000000)
        print("Day\(day) deposit: \(deposit)")
    }
    return deposit
}

//testInterest(unitDay: 1)
//print()
//print()
//testInterest(unitDay: 10)

var myGame = BullsAndCows()

print(myGame.makeRandom3DigitNumbers())
print(myGame.showGameScore())
