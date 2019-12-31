//
//  Parsable.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/2019.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation


/** This is a protocol which is used for data parsing to provide Generic effect for responses \
     Conform this protocol for Entity to hold the reponse received from the Server
 */
protocol Parsable {
    
    /**
     An Initialzer that implements the parsing procedure the response received from the HTTP Response
        - withJSON: JSON Response Received from HTTP Endpoint of type Dictionary
     */
    init?(withJSON json: [String: Any])
}
