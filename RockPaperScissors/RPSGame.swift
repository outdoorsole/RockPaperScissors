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
    
    func gameResult() -> String {
        return ""
    }
}

enum RPSMove {
    case rock, paper, scissors
}

var rpsGame = RPSGame()
