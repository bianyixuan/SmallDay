//
//  theme.swift
//  SmallDay
//
//  Created by bianyixuan on 16/8/1.
//  Copyright © 2016年 brandon. All rights reserved.
//  全局公用属性

import UIKit

public let NavigationH: CGFloat = 64
public let AppWidth: CGFloat = UIScreen.mainScreen().bounds.size.width
public let AppHeight: CGFloat = UIScreen.mainScreen().bounds.size.height
public let MainBounds: CGRect = UIScreen.mainScreen().bounds

struct theme {
    
    ///  APP导航条barButtonItem文字大小
    static let SDNavItemFont: UIFont = UIFont.systemFontOfSize(16)
    
    /**
     *  ViewController的背景颜色
     */
    static let SDBackgroundColor: UIColor  = UIColor.colorWith(255,green: 255, blue: 255,alpha: 1)
    
    /**
     *  APP导航条titlefont文字大小
     */
    static let SDNavTitleFont : UIFont = UIFont.systemFontOfSize(18)
}