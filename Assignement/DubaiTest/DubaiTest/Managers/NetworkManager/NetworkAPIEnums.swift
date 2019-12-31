//
//  NetworkAPIEnums.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/2019.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation

/** An Enumeration for the HTTP Response Error */
enum APIError: Error {
    
    case noInternet, location, requestFailure(message: String), other
    
    var localizedDescription: String {
        switch self {
        case .noInternet:
            return Strings.NO_INTERNET
        case .requestFailure(let message):
            return message
        case .location:
            return Strings.LOCATION_ERROR_DESCRIPTION
        case .other:
            return Strings.SOMETHING_WRONG
        }
    }
    
    var title: String {
        switch self {
        case .noInternet:
            return Strings.NETWORK_ERROR_TITLE
        case .requestFailure(_):
            return Strings.REQUEST_REQUEST
        case .location:
            return Strings.LOCATION_ERROR_TITLE
        case .other:
            return Strings.ERROR_ALERT
        }
    }
}

enum HTTPMethods: String {
    case post = "POST", get = "GET"
}
