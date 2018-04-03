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
    
    @IBAction func rockButton(_ sender: UIButton) {
        rpsGame.playerMove = .rock
        randomMoveGenerator()
    }
    
    @IBAction func paperButton(_ sender: Any) {
        rpsGame.playerMove = .paper
        randomMoveGenerator()
    }
    
    @IBAction func scissorsButton(_ sender: UIButton) {
        rpsGame.playerMove = .scissors
        randomMoveGenerator()
    }
    
    func randomMoveGenerator() {
        let randomNum = Int(arc4random_uniform(3) + 1)
        print(randomNum)
        switch randomNum {
        case 1:
            rpsGame.computerMove = .rock
        case 2:
            rpsGame.computerMove = .paper
        case 3:
            rpsGame.computerMove = .scissors
        default:
            print("This did not work!")
        }
    }
    
    func setLabel() {
        if rpsGame.playerMove != nil && rpsGame.computerMove != nil {
            gameResultsLabel.text = "\(String(describing: rpsGame.playerMove!)) vs \(String(describing: rpsGame.computerMove!))"
        }
    }
}

