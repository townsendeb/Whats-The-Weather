//
//  ViewController.swift
//  Whats The Weather
//
//  Created by Eric Townsend on 1/29/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var weather = [Weather]()
    var currentCity: Weather!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cityOfDesoto = "75115"
        currentCity.zip = cityOfDesoto
        
        currentCity.downloadWeatherDetails { () -> () in
            //this will be called after the download is done.
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("WeatherCell") as? WeatherCell {
            
            let city: Weather!
            city = weather[indexPath.row]
            cell.configureCell(city)
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weather.count
    }

}