//
//  ViewController.swift
//  Cities
//
//  Created by Hans Hofner on 13.06.15.
//  Copyright (c) 2015 Hans Hofner. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController {
    
    var city: City?
    @IBOutlet var cityButton: UIButton!
    
    override func viewWillAppear(animated: Bool) {
        cityButton.setTitle(city?.name, forState: .Normal)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            switch identifier {
                case "showCityDetail":
                    if let cityDetailViewController = segue.destinationViewController as? CityDetailViewController {
                        cityDetailViewController.city = self.city
                }
                default:
                    break
            }
        }
    }
    
    @IBAction func unwindToCities(segue: UIStoryboard){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

