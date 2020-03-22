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
    
    convenience init(bgcolor: UIColor) {
        self.init(nibName: nil, bundle: nil)
        self.view.backgroundColor = bgcolor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
