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
            resultArray.append(addStep(for: players))
        }
        return resultArray
    }
    
    func addStep(for players: Int) -> Array<String> {
        var step = Array<String>()
        let max = (players * 2) - 1
        for dividend in 1...max {
            if dividend % 2 != 0 {
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
