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
        var result: String
        switch playerMove {
        case .rock?:
            print("You chose rock")
            result = "You chose rock"
        case .paper?:
            print("You chose rock")
            result = "You chose paper"
        case .scissors?:
            print("You chose scissors")
            result = "You chose scissors"
        default:
            return ""
        }
        return result
    }
}

enum RPSMove {
    case rock, paper, scissors
}

var rpsGame = RPSGame()
