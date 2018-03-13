//
//  RPSGame.swift
//  RockPaperScissors
//
//  Created by Maribel Montejano on 3/12/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import Foundation

class RPSGame {
    var playerMove: RPSMove?
    var computerMove: RPSMove?
    
    func gameResult() -> String {
        var result: String = ""
        
        if playerMove == .rock && computerMove == .rock || playerMove == .paper && computerMove == .paper || playerMove == .scissors && computerMove == .scissors {
            result = "It's a tie!"
        }
        return result
    }
}

enum RPSMove {
    case rock, paper, scissors
}

var rpsGame = RPSGame()
