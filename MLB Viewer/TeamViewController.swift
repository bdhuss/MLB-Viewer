//
//  TeamViewController.swift
//  MLB Viewer
//
//  Created by Bryan Huss on 3/22/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import Foundation
import UIKit

class TeamViewController: UIViewController {
    
    private let team:MLBTeam
    
    init(team: MLBTeam) {
        self.team = team
        super.init(nibName: nil, bundle: nil)
        
        self.title = team.teamName
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
