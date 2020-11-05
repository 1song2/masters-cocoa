//
//  main.swift
//  LadderGame
//
//  Created by Song on 2020/11/05.
//

import Foundation

let input = readLine() ?? ""

struct LadderGame {
    func createGame() {
        guard let numberOfPlayers: Int = Int(input) else {
            fatalError("게임에 참여할 인원을 숫자로 입력해주세요.")
        }
        if (numberOfPlayers < 2 || numberOfPlayers > 8) {
            print("인원이 너무 적거나 많아 게임을 시작할 수 없습니다.")
        } else {
            printLadder(array: self.createLadder(numberOfPlayers, height: 4))
        }
    }
    
    func printLadder(array: Array<Array<String>>) {
        for innerArray in array {
            for item in innerArray {
                print(item, terminator: " ")
            }
            print()
        }
    }
    
    func createLadder(_ players: Int, height: Int) -> Array<Array<String>> {
        var resultArray = Array<Array<String>>()
        for _ in 1...height {
            resultArray.append(putStep(players))
        }
        return resultArray
    }
    
    func putStep(_ players: Int) -> Array<String> {
        var step = Array<String>()
        for i in 1...(players - 1 + players) {
            if i % 2 != 0 {
                step.append("|")
            } else {
                if Int.random(in: 0...100) % 2 == 0 {
                    step.append("-")
                } else {
                    step.append(" ")
                }
            }
        }
        return step
    }
}

var newGame = LadderGame()
//print(newGame.createGame())
//print(newGame.printLadder(3, height: 4))
//newGame.printLadder(array: newGame.createLadder(6, height: 4))

newGame.createGame()
