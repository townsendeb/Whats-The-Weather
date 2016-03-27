//
//  WeatherCell.swift
//  Whats The Weather
//
//  Created by Eric Townsend on 1/29/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var zipLabel: UILabel!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var degreesLabel: UILabel!
    @IBOutlet weak var rainLabel: UILabel!
    @IBOutlet weak var windLabel: UILabel!
    @IBOutlet weak var weatherImg: UIImageView!
    
    var weather: Weather!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func configureCell (weather: Weather) {
        self.weather = weather
        
        cityLabel.text = self.weather.city.capitalizedString
        zipLabel.text = self.weather.zip
        dayLabel.text = self.weather.day.capitalizedString
        degreesLabel.text = self.weather.degrees
        rainLabel.text = self.weather.rain
        windLabel.text = self.weather.wind
        weatherImg.image = UIImage(named: "Sunny")
        
    }
}

// weatherImg.image = UIImage(named: "\(self.weather.typeWeather)")