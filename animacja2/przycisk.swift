//
//  przycisk.swift
//  animacja2
//
//  Created by Kamil Wójcik on 24.06.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import UIKit

class przycisk: UIButton {
    
    override func awakeFromNib() {
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: 157 / 255.0, green: 157 / 255.0, blue: 157 / 255.0, alpha: 0.5).CGColor //cgcolor poniewaz shadow color to cg
        layer.shadowOpacity = 0.8 //wielkosc
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }
}
