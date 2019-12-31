//
//  UIStoryboard+Extensions.swift
//  DubaiTest
//
//  Created by DMI on 31/12/19.
//  Copyright © 2019 VE. All rights reserved.
//

import UIKit

extension UIStoryboard {
   
    static var main: UIStoryboard {
        return UIStoryboard(name: "main", bundle: nil)
    }
    
    func instentiate<T: UIViewController>() -> T {
        return instantiateViewController(identifier: String(describing: T.self))
    }
}
