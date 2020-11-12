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

//_ = testInterest(unitDay: 1)
//print()
//print()
//_ = testInterest(unitDay: 10)

var userInputNumber = readLine() ?? ""
var myGame = BullsAndCows()

print(myGame.showGameScore())
myGame.newGame()
