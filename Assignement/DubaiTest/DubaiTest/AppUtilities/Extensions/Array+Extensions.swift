//
//  Array+Extensions.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/2019.
//  Copyright © 2019 Alam. All rights reserved.
//

import Foundation

/// This is the parsing of json elements of and arry to required type
extension Array where Element == [String: Any] {
    
    func parseList<T: Parsable>(type: T.Type) -> [T] {
        return self.compactMap({T(withJSON: $0)})
    }
}

/// This is the parsing of json elements of and arry to required type
extension Array: Parsable where Element: Parsable{
     
    init?(withJSON json: [String : Any]) {
        guard let firstKey = json.keys.first(where: {json[$0] is [[String: Any]] }) else {
            return nil
        }
        self = (json[firstKey] as? [[String:Any]])?.compactMap({Element(withJSON: $0)}) ?? []
       }
}
