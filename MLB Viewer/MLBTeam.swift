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
    let city:String
    let teamLogo:String
    let stadiumName:String
    let stadiumImage:String
    
    init(teamName: String, city: String, teamLogo: String, stadiumName: String, stadiumImage: String) {
        self.teamName = teamName
        self.city = city
        self.teamLogo = teamLogo
        self.stadiumName = stadiumName
        self.stadiumImage = stadiumImage
    }
}
