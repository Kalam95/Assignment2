//
//  StyleGuides.swift
//  DubaiTest
//
//  Created by Mehboob Alam on 28/12/2019.
//  Copyright © 2019 VE. All rights reserved.
//

import UIKit

extension UIColor {
    
    static var navBarColor: UIColor {
        return UIColor(red: 52/255, green: 199/255, blue: 89/255, alpha: 1)
    }
    
    func with(alpha: CGFloat) {
        self.withAlphaComponent(alpha)
    }
    
    static var placeholderColor: UIColor {
        return UIColor.black.withAlphaComponent(0.7)
    }
}

extension UIFont {
   
    static var titleFont: UIFont {
        return UIFont.systemFont(ofSize: 17, weight: .bold)
    }
    
    static var regularFont: UIFont {
        return UIFont.systemFont(ofSize: 17, weight: .regular)
    }
}
