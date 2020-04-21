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
        self.title = team.city
        view.backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let infoView:UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let stadiumView:UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setupViews() {
        let teamLogoImageView = UIImageView(image: UIImage(named: team.teamLogo))
        teamLogoImageView.contentMode = .scaleAspectFit
        teamLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let cityLabel = UILabel()
        cityLabel.text = team.city
        cityLabel.font = .systemFont(ofSize: 30)
        cityLabel.textAlignment = .center
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let teamNameLabel = UILabel()
        teamNameLabel.text = team.teamName
        teamNameLabel.font = .systemFont(ofSize: 25)
        teamNameLabel.textAlignment = .center
        teamNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        infoView.addSubview(teamLogoImageView)
        infoView.addSubview(cityLabel)
        infoView.addSubview(teamNameLabel)
        
        let stadiumNameLabel = UILabel()
        stadiumNameLabel.text = team.stadiumName
        stadiumNameLabel.font = .systemFont(ofSize: 30)
        stadiumNameLabel.textAlignment = .center
        stadiumNameLabel.lineBreakMode = .byWordWrapping
        stadiumNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let stadiumImageView = UIImageView(image: UIImage(named: team.stadiumImage))
        stadiumImageView.contentMode = .scaleAspectFit
        stadiumImageView.translatesAutoresizingMaskIntoConstraints = false
        
        stadiumView.addSubview(stadiumNameLabel)
        stadiumView.addSubview(stadiumImageView)
        
        view.addSubview(infoView)
        view.addSubview(stadiumView)
        
        infoView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        infoView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        infoView.topAnchor.constraint(equalTo: view.topAnchor, constant: 90).isActive = true
//        infoView.heightAnchor.constraint(equalToConstant: view.frame.height/3).isActive = true
//        infoView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        teamLogoImageView.topAnchor.constraint(equalTo: infoView.topAnchor).isActive = true
        teamLogoImageView.leftAnchor.constraint(equalTo: infoView.leftAnchor).isActive = true
        teamLogoImageView.rightAnchor.constraint(equalTo: infoView.rightAnchor, constant: -(view.frame.width * 0.75)).isActive = true
        teamLogoImageView.heightAnchor.constraint(equalToConstant: view.frame.height/8).isActive = true
        
        cityLabel.leftAnchor.constraint(equalTo: teamLogoImageView.rightAnchor).isActive = true
        cityLabel.rightAnchor.constraint(equalTo: infoView.rightAnchor).isActive = true
        cityLabel.topAnchor.constraint(equalTo: infoView.topAnchor, constant: 10).isActive = true
        
        teamNameLabel.leftAnchor.constraint(equalTo: teamLogoImageView.rightAnchor).isActive = true
        teamNameLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor).isActive = true
        teamNameLabel.rightAnchor.constraint(equalTo: infoView.rightAnchor).isActive = true
        
        stadiumView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        stadiumView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        stadiumView.topAnchor.constraint(equalTo: teamLogoImageView.bottomAnchor).isActive = true
//        stadiumView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        
        stadiumNameLabel.leftAnchor.constraint(equalTo: stadiumView.leftAnchor).isActive = true
        stadiumNameLabel.rightAnchor.constraint(equalTo: stadiumView.rightAnchor).isActive = true
        stadiumNameLabel.topAnchor.constraint(equalTo: stadiumView.topAnchor).isActive = true
        
        stadiumImageView.leftAnchor.constraint(equalTo: stadiumView.leftAnchor).isActive = true
        stadiumImageView.rightAnchor.constraint(equalTo: stadiumView.rightAnchor).isActive = true
        stadiumImageView.topAnchor.constraint(equalTo: stadiumNameLabel.bottomAnchor).isActive = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
}
