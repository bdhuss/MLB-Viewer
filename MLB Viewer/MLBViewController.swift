//
//  MLBViewController.swift
//  MLB Viewer
//
//  Created by Bryan Huss on 3/3/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import UIKit

class MLBViewController: UIViewController, UITableViewDataSource {
    
    private let mlbTeams = MLBAPI.getMLBTeams()
    let teamsTableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
        teamsTableView.frame = CGRect(x: 0, y: 0, width: CGFloat(view.bounds.width), height: CGFloat(view.bounds.height))
        teamsTableView.dataSource = self
        teamsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "mlbTeamCell")
        
        view.addSubview(teamsTableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mlbTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mlbTeamCell", for: indexPath)
        cell.textLabel?.text = mlbTeams[indexPath.row].teamName
        return cell
    }
}
