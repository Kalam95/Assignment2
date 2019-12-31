//
//  String+Extensions.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/2019.
//  Copyright © 2019 Alam. All rights reserved.
//

import Foundation

/// To get date converted in required types
extension String {
   
    func getDate(format:DateFormat) -> Date? {
        let dateformater = DateFormatter()
        dateformater.dateFormat = format.rawValue
        let date = dateformater.date(from: self)
        return date
    }
    
    /// Method to change date fromat
    func changeDateFormat(fromFromat currentFormat:DateFormat, toFormat changedFormat:DateFormat ) -> String {
        let dateString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        if dateString.isEmpty {
            return dateString
        }
        
        let date = dateString.getDate(format: currentFormat)
        return date?.getString(format: changedFormat) ?? self
    }
    
    var trimmedText: String {
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
