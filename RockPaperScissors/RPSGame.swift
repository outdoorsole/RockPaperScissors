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
    var win: Int = 0
    var loss: Int = 0
    var tie: Int = 0
    
    func gameResult() -> String {
        var result: String = ""
        
        if playerMove == .Rock && computerMove == .Rock || playerMove == .Paper && computerMove == .Paper || playerMove == .Scissors && computerMove == .Scissors {
            result = "It's a tie!"
        } else if playerMove == .Rock && computerMove == .Scissors || playerMove == .Scissors && computerMove == .Paper || playerMove == .Paper && computerMove == .Rock {
            result = "You win!"
        } else {
            result = "You lose!"
        }
        return result
    }
}

enum RPSMove {
    case Rock, Paper, Scissors
}

var rpsGame = RPSGame()
