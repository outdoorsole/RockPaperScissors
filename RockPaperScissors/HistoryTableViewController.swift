//
//  HistoryTableViewController.swift
//  RockPaperScissors
//
//  Created by Maribel Montejano on 4/2/18.
//  Copyright © 2018 Maribel Montejano. All rights reserved.
//

import UIKit

class HistoryTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rpsResults.matches.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameResultsCell", for: indexPath)
        
        if cell.textLabel != nil {
            cell.textLabel!.text = rpsResults.matches[indexPath.row]
        }

        return cell
    }

}
