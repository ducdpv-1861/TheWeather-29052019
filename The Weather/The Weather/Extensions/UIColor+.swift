//
//  UIColor+.swift
//  The Weather
//
//  Created by pham.van.ducd on 5/30/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: Int = 1) {
        self.init(red: CGFloat(red) / 255,
                  green: CGFloat(green) / 255,
                  blue: CGFloat(blue) / 255,
                  alpha: CGFloat(alpha))
    }
    
    convenience init(hex: Int) {
        self.init(red: (hex >> 16) & 0xFF,
                  green: (hex >> 8) & 0xFF,
                  blue: hex & 0xFF)
    }
    
    @nonobjc class var ghostWhite: UIColor {
        return UIColor(hex: 0xF8F8F8)
    }
    
    @nonobjc class var pastelRed: UIColor {
        return UIColor(hex: 0xFF686B)
    }
}
