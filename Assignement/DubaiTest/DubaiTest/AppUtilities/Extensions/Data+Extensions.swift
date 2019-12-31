//
//  Data+Extensions.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/19
//  Copyright © 2019 Alam. All rights reserved.
//

import Foundation

/// This is the parsing of json json
extension Data {
    
    func parseData(options:JSONSerialization.ReadingOptions? = nil) throws -> [String: Any]  {
        let options = options ?? JSONSerialization.ReadingOptions(rawValue: 0)
        guard let array = try JSONSerialization.jsonObject(with: self, options: options) as? [String:Any] else {
            return [:]
        }
        return array
    }
}
