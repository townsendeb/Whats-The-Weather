//
//  Weather.swift
//  Whats The Weather
//
//  Created by Eric Townsend on 1/29/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//

import Foundation
import Alamofire

class Weather {
    private var _city: String!
    private var _zip: String!
    private var _day: String!
    private var _degrees: String!
    private var _rain: String!
    private var _wind: String!
    private var _typeWeather: String!
    private var _weatherUrl: String!
    
    var city: String {
        if _city == nil {
            _city = ""
        }
        return _city
    }
    var zip: String {
        if _zip == nil {
            _zip = ""
        }
        return _zip
    }
    var day: String {
        if _day == nil {
            _day = ""
        }
        return _day
    }
    var degrees: String {
        if _degrees == nil {
            _degrees = ""
        }
        return _degrees
    }
    var rain: String {
        if _rain == nil {
            _rain = ""
        }
        return _rain
    }
    var wind: String {
        if _wind == nil {
            _wind = ""
        }
        return _wind
    }
    var typeWeather: String {
        if _typeWeather == nil {
            _typeWeather = ""
        }
        return _typeWeather
    }
    
    init(zip: String) {
        self._zip = zip
        _weatherUrl = "\(URL_BASE)\(self._zip)\(URL_WEATHER)"
    }
    
    func downloadWeatherDetails(completed: DownloadComplete) {
        let url = NSURL(string: _weatherUrl)!
        //makes the request!
        Alamofire.request(.GET, url).responseJSON { response in
            let result = response.result
            
            print(result.value.debugDescription)

//            if let dict = result.value as? Dictionary<String, AnyObject> {
//                if let city = dict["city"] as? String {
//                    self._city = city
//                    print(city)
//        }
//      }

    }
  }
}