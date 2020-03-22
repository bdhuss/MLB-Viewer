//
//  MLBAPI.swift
//  MLB Viewer
//
//  Created by Bryan Huss on 3/10/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import Foundation
import UIKit

class MLBAPI {
    
    static func getMLBTeams() -> [MLBTeam] {
        let mlbTeams = [
            MLBTeam(teamName: "National's", teamLogo: "Washington_Nationals_logo", stadiumName: "National's Park"),
            MLBTeam(teamName: "Red Sox", teamLogo: "Boston_Red_Sox_logo", stadiumName: "Fenway Park"),
            MLBTeam(teamName: "Yankee's", teamLogo: "New_York_Yankees_logo", stadiumName: "Yankee's Park"),
            MLBTeam(teamName: "Oriole's", teamLogo: "Baltimore_Orioles_logo", stadiumName: "Camden Yards")
        ]
        return mlbTeams
    }
}
