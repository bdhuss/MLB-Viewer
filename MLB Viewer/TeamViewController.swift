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
    
    convenience init(team: MLBTeam) {
        self.init(nibName: nil, bundle: nil)
        print(team.teamName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
