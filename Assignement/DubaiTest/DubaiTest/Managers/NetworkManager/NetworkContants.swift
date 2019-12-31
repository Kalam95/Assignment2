//
//  NetworkContants.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/2019.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation

let WEB_SERVICE_URL = "http://api.openweathermap.org/data/2.5/"
let PERIOD = 7
let API_KEY = "7391419adcee3dfbcf0b2e16e81d51b5" //"b6907d289e10d714a6e88b30761fae22"

enum APIPoint: String {
    typealias RawValue = String
    case weather = "weather?"
    case forecast = "forecast?"
}
