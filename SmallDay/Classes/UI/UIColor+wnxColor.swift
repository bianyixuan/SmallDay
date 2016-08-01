//
//  UIColor+wnxColor.swift
//  SmallDay
//
//  Created by bianyixuan on 16/8/1.
//  Copyright © 2016年 brandon. All rights reserved.
//

import UIKit

extension UIColor {
    class func colorWith(red: Int, green: Int, blue: Int, alpha: CGFloat) -> UIColor {
        let color = UIColor(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
        return color
    }
}
