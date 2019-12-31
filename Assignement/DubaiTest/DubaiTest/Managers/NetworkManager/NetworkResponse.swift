//
//  NetworkResponse.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/2019.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation

//NOTE: I have just made it simple with few fields because of less time and less requirements.

/** This Class is used to represent the HTTP Response received from the Endpoint*/
class NetworkResponse<T: Parsable> {
    
    var json: [String: Any] = [:]
    
    var data: T? {
        return T(withJSON: json)
    }
    
    var resultType: Result<T, APIError>
    
    init(json: [String: Any], result: Result<T, APIError>) {
        self.json = json
        self.resultType = result
    }
}
