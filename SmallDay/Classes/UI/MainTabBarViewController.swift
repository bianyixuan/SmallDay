//
//  MainTabBarViewController.swift
//  SmallDay
//
//  Created by bianyixuan on 16/8/1.
//  Copyright © 2016年 brandon. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self .setUpAllChildViewController()
        
        self.setValue(MainTabBar(), forKey: "tabBar")
    }
    
    /**
     初始化所有子控制器
     */
    private func setUpAllChildViewController() {
        //探店
        tabBarAddChildViewController(ExploreViewController(), title: "探店", imageName: "recommendation_1", selectedImageName: "recommendation_2")
        tabBarAddChildViewController(ExperienceViewController(), title: "体验", imageName: "broadwood_1", selectedImageName: "broadwood_2")
        tabBarAddChildViewController(ClassifyViewController(), title: "分类", imageName: "classification_1", selectedImageName: "classification_2")
        tabBarAddChildViewController(MeViewController(), title: "我的", imageName: "my_1", selectedImageName: "my_2")
    }
    
    private func tabBarAddChildViewController(vc: UIViewController, title: String, imageName: String , selectedImageName: String){
        vc.tabBarItem = UITabBarItem(title: title, image: UIImage(named: imageName), selectedImage: UIImage(named: selectedImageName))
        vc.view.backgroundColor = theme.SDBackgroundColor
        let nav = MainNavigationController(rootViewController: vc)
        addChildViewController(nav)
    }
    
}

class MainTabBar: UITabBar{
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translucent = false
        self.backgroundImage = UIImage(named: "tabbar")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
