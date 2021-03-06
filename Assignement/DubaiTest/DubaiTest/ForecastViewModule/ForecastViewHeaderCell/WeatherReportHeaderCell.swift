//
//  WeatherReportHeaderCell.swift
//  DubaiTest
//
//  Created by DMI on 30/12/19.
//  Copyright © 2019 VE. All rights reserved.
//

import UIKit

class WeatherReportHeaderCell: UITableViewHeaderFooterView {

    static let ID = "WeatherReportHeaderCell"
    
    lazy var titleLabel: UILabel! = {
        let label = UILabel()
        label.backgroundColor = UIColor.lightGray
        label.textAlignment = .center
        label.textColor = UIColor.white
        label.roundedBorders(radius: 7)
        label.font = UIFont.regularFont.withSize(13)
        self.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 5).isActive = true
        label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5).isActive = true
        label.widthAnchor.constraint(equalToConstant: 150).isActive = true
        return label
    } ()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
