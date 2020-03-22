//
//  MLBTeam.swift
//  MLB Viewer
//
//  Created by Bryan Huss on 3/9/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import Foundation
import UIKit

struct MLBTeam {
    let teamName:String
    let teamLogo:String
    let stadiumName:String
    
    init(teamName: String, teamLogo: String, stadiumName: String) {
        self.teamName = teamName
        self.teamLogo = teamLogo
        self.stadiumName = stadiumName
    }
}
