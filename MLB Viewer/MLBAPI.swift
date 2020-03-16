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
            MLBTeam(teamName: "Nationals", stadiumName: "Nats Park"),
            MLBTeam(teamName: "Nats", stadiumName: "N A T Park"),
            MLBTeam(teamName: "NAT's", stadiumName: "NAT's Park")
        ]
        return mlbTeams
    }
}
