//
//  CityDetailViewController.swift
//  Cities
//
//  Created by Hans Hofner on 13.06.15.
//  Copyright (c) 2015 Hans Hofner. All rights reserved.
//

import UIKit

class CityDetailViewController: UIViewController {
    var city: City?
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        self.nameLabel.text = city?.name
        self.imageView.image = city?.image
    }
}

