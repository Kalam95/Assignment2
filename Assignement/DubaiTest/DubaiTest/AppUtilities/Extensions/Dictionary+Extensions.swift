//
//  Dictionary+Extensions.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/2019.
//  Copyright © 2019 VE. All rights reserved.
//

import Foundation

/// This is the parsing of json elements where key must be string and value can be anything
extension Dictionary where Key == String ,Value == Any {
    
    func parse<T: Parsable>(parsable: T.Type) -> T? {
        return T(withJSON: self)
    }
    
    var query: String {
        var string = ""
        self.forEach {
            if !string.isEmpty { string.append("&") }
            string.append("\($0)=\($1)")
        }
        return string
    }
}
