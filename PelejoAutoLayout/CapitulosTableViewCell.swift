//
//  CapitulosTableViewCell.swift
//  PelejoAutoLayout
//
//  Created by Elaine  Cruz on 20/08/20.
//  Copyright © 2020 Elaine  Cruz. All rights reserved.
//

import Foundation
import UIKit

class CapitulosTableviewCell: UITableViewCell {
    
    var button = UIButton()
    //let capituloLabel: UILabel
    var available = false
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        //titleLabel.font = UIFont(name: "Gilbert", size: 30)

        self.addSubview(button)
        //self.addSubview(titleLabel)
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
