//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Maribel Montejano on 3/12/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameResultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func moveButtonPressed(_ sender: UIButton) {
        if let senderTitle = sender.titleLabel {
            if let titleText = senderTitle.text {
                
                setPlayerMove(title: titleText)
                randomMoveGenerator()
                setLabel()
            }
        }
    }
    
    func setPlayerMove(title: String) {
        switch title {
        case "Rock":
            rpsGame.playerMove = .Rock
        case "Paper":
            rpsGame.playerMove = .Paper
        case "Scissors":
            rpsGame.playerMove = .Scissors
        default:
            print("No move selected for player. Choose again.")
        }
    }
    
    func randomMoveGenerator() {
        let randomNum = Int(arc4random_uniform(3) + 1)
        switch randomNum {
        case 1:
            rpsGame.computerMove = .Rock
        case 2:
            rpsGame.computerMove = .Paper
        case 3:
            rpsGame.computerMove = .Scissors
        default:
            print("This did not work!")
        }
    }
    
    func setLabel() {
        if rpsGame.playerMove != nil && rpsGame.computerMove != nil {
            let gameResults = "\(String(describing: rpsGame.playerMove!)) vs \(String(describing: rpsGame.computerMove!)). " + rpsGame.gameResult()
            gameResultsLabel.text = gameResults
            
            // Append to game history
            rpsResults.matches.append(gameResults)
        }
    }
}

