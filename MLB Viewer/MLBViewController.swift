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
        
        self.title = "MLB Fans"
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        
//        teamsTableView.frame = CGRect(x: 0, y: 0, width: CGFloat(view.bounds.width), height: CGFloat(view.bounds.height))
//        let headerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
//        headerLabel.text = "MLB Teams"
//        headerLabel.backgroundColor = .gray
//        headerLabel.textAlignment = .center
//        teamsTableView.tableHeaderView = headerLabel
        teamsTableView.dataSource = self
        teamsTableView.delegate = self
        teamsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "mlbTeamCell")
        
        view.addSubview(teamsTableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mlbTeams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mlbTeamCell", for: indexPath)
        cell.imageView?.image = UIImage(named: mlbTeams[indexPath.row].teamLogo)
        cell.textLabel?.text = mlbTeams[indexPath.row].teamName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .blue
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
