//
//  ResultViewController.swift
//  RockPaperScissors
//
//  Created by Maribel Montejano on 3/12/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var outcomeLabel: UILabel!
    @IBOutlet weak var gameResultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if rpsGame.playerMove != nil && rpsGame.computerMove != nil {
            outcomeLabel.text = "\(String(describing: rpsGame.playerMove!)) vs \(String(describing: rpsGame.computerMove!))"
        }
        gameResultsLabel.text = rpsGame.gameResult()
    }

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
