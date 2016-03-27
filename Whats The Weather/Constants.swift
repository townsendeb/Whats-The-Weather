//
//  Constants.swift
//  Whats The Weather
//
//  Created by Eric Townsend on 1/29/16.
//  Copyright © 2016 KrimsonTech. All rights reserved.
//

import Foundation
import UIKit

let URL_BASE = "http://api.openweathermap.org/data/2.5/weather?zip="
let URL_WEATHER = ",us&appid=44db6a862fba0b067b1930da0d769e98"

public typealias DownloadComplete = () -> ()
// empty closure that does not have anything in it or return anything