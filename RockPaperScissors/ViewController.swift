//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Maribel Montejano on 3/12/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rockButton(_ sender: UIButton) {
        rpsGame.playerMove = .rock
        performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
    @IBAction func paperButton(_ sender: Any) {
        rpsGame.playerMove = .paper
        performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
    @IBAction func scissorsButton(_ sender: UIButton) {
        rpsGame.playerMove = .scissors
        performSegue(withIdentifier: "resultSegue", sender: self)
    }
    
}

