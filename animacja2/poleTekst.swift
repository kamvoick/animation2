//
//  poleTekst.swift
//  animacja2
//
//  Created by Kamil Wójcik on 24.06.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import UIKit

class poleTekst: UITextField {
    
        override func awakeFromNib() {
            layer.cornerRadius = 2.0
            layer.borderColor = UIColor(red: 157 / 255, green: 157 / 255, blue: 157 / 255, alpha: 0.5).CGColor
            layer.borderWidth = 1.0
        }
        
        override func textRectForBounds(bounds: CGRect) -> CGRect {
            return CGRectInset(bounds, 10, 0)
        }
        
        override func editingRectForBounds(bounds: CGRect) -> CGRect {
            return CGRectInset(bounds, 10, 0)
        }
    

}
