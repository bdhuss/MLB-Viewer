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
            MLBTeam(teamName: "Washington National's", city: "Washington DC", teamLogo: "Washington_Nationals_logo", stadiumName: "National's Park", stadiumImage: "Washington_Nationals_stadium"),
            MLBTeam(teamName: "Red Sox", city: "Boston", teamLogo: "Boston_RedSox_Logo", stadiumName: "Fenway Park", stadiumImage: "Washington_Nationals_stadium"),
            MLBTeam(teamName: "Yankee's", city: "New York", teamLogo: "New_York_Yankees_logo", stadiumName: "Yankee's Park", stadiumImage: "Washington_Nationals_stadium"),
            MLBTeam(teamName: "Oriole's", city: "Baltimore", teamLogo: "Baltimore_Orioles_logo", stadiumName: "Camden Yards", stadiumImage: "Washington_Nationals_stadium"),
            MLBTeam(teamName: "Twins", city: "Minneapolis", teamLogo: "Minnesota_Twins_logo", stadiumName: "Target Field", stadiumImage: "Washington_Nationals_stadium")
        ]
        return mlbTeams
    }
}
