//
//  GameManager.swift
//  LadderGame
//
//  Created by Song on 2020/11/05.
//

import Foundation

let input = readLine() ?? ""

struct LadderGame {
    func createGame() {
        guard let players: Int = Int(input) else {
            fatalError("게임에 참여할 인원을 숫자로 입력해주세요.")
        }
        
        if (players < 2 || players > 8) {
            print("인원이 너무 적거나 많아 게임을 시작할 수 없습니다.")
        } else {
            printLadder(array: self.createLadder(with: players, height: 4))
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
    
    func createLadder(with players: Int, height: Int) -> Array<Array<String>> {
        var resultArray = Array<Array<String>>()
        for _ in 1...height {
            resultArray.append(addSteps(for: players))
        }
        return resultArray
    }
    
    func addSteps(for players: Int) -> Array<String> {
        var steps = Array<String>()
        let max = (players * 2) - 1
        for column in 1...max {
            if column % 2 != 0 {
                steps.append("|")
            } else {
                if Int.random(in: 0...100) % 2 == 0 {
                    steps.append("-")
                } else {
                    steps.append(" ")
                }
            }
        }
        return steps
    }
}
