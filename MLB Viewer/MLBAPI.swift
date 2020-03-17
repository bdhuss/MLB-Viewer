//
//  MLBAPI.swift
//  MLB Viewer
//
//  Created by Bryan Huss on 3/10/20.
//  Copyright © 2020 Bryan Huss. All rights reserved.
//

import Foundation

class MLBAPI {
    
    static func getMLBTeams() -> [MLBTeam] {
        let mlbTeams = [
            MLBTeam(teamName: "National's", stadiumName: "National's Park"),
            MLBTeam(teamName: "Red Sox", stadiumName: "Fenway Park"),
            MLBTeam(teamName: "Yankee's", stadiumName: "Yankee's Park"),
            MLBTeam(teamName: "Oriole's", stadiumName: "Camden Yards")
        ]
        return mlbTeams
    }
}
