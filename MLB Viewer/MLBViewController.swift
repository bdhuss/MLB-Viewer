//
//  MLBViewController.swift
//  MLB Viewer
//
//  Created by Bryan Huss on 3/3/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import UIKit

class MLBViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let mlbTeams = MLBAPI.getMLBTeams()
    let teamsTableView = UITableView(frame: CGRect(x: 0, y: 0, width: CGFloat(UIScreen.main.bounds.width), height: CGFloat(UIScreen.main.bounds.height)), style: .plain)
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        
        self.title = "MLB Teams"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
        teamsTableView.dataSource = self
        teamsTableView.delegate = self
        teamsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "mlbTeamCell")
        
        view.addSubview(teamsTableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mlbTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "mlbTeamCell", for: indexPath)
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "mlbTeamCell")
        tableView.dequeueReusableCell(withIdentifier: "mlbTeamCell")
        cell.imageView?.image = UIImage(named: mlbTeams[indexPath.row].teamLogo)
        cell.textLabel?.text = mlbTeams[indexPath.row].teamName
        cell.detailTextLabel?.text = mlbTeams[indexPath.row].city
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = TeamViewController(team: mlbTeams[indexPath.row])
        print("\(indexPath): \(mlbTeams[indexPath.row].teamName)")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
