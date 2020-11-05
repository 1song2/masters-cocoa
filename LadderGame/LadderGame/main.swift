//
//  main.swift
//  LadderGame
//
//  Created by Song on 2020/11/05.
//

import Foundation

let input = readLine() ?? ""

struct LadderGame {
    func createGame() -> String {
        guard let player: Int = Int(input) else {
            fatalError("게임에 참여할 인원을 숫자로 입력해주세요.")
        }
        var message = ""
        if (player < 2 || player > 8) {
            message = "인원이 너무 적거나 많아 게임을 시작할 수 없습니다."
        } else {
            printLadder()
        }
        return message
    }
    
    func printLadder() {
        
    }
}

var newGame = LadderGame()
print(newGame.createGame())

