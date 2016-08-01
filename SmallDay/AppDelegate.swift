//
//  AppDelegate.swift
//  SmallDay
//
//  Created by bianyixuan on 16/8/1.
//  Copyright © 2016年 brandon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        setKeyWindow()
        
        setAppAppearance()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "showMainViewController", name: SD_ShowMianTabbarController_Notification, object: nil)
        
        return true
    }
    
    private func setKeyWindow(){
        window = UIWindow(frame: MainBounds);
        
        window?.rootViewController = showLeadpage()
        
        window?.makeKeyAndVisible()
    }
    
    func setAppAppearance() {
        
        //设置底部tabbar文字
        let itemAppearance = UITabBarItem.appearance()
        
        itemAppearance.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.blackColor(), NSFontAttributeName:UIFont.systemFontOfSize(12)], forState: .Selected)
        itemAppearance.setTitleTextAttributes([NSForegroundColorAttributeName:UIColor.grayColor(), NSFontAttributeName:UIFont.systemFontOfSize(12)], forState: .Normal)
        
        //导航栏主题
        let navAPpearance = UINavigationBar.appearance()
        navAPpearance.translucent = false
        navAPpearance.titleTextAttributes = [NSFontAttributeName :theme.SDNavItemFont,NSForegroundColorAttributeName:UIColor.blackColor()]
        
        //设置底部tabbar按钮
        let item = UIBarButtonItem.appearance()
        item.setTitleTextAttributes([NSFontAttributeName: theme.SDNavItemFont,NSForegroundColorAttributeName: UIColor.blackColor()], forState: .Normal)
    }
    
    //MARK: - 引导页设置
    private func showLeadpage() -> UIViewController {
        let versionStr = "CFBundleShortVersionString"
        let currentVersion = NSBundle.mainBundle().infoDictionary![versionStr] as! String
        let oleVersion = (NSUserDefaults.standardUserDefaults().objectForKey(versionStr) as? String) ?? ""
        
        if currentVersion.compare(oleVersion) == NSComparisonResult.OrderedDescending {
            NSUserDefaults.standardUserDefaults().setObject(currentVersion, forKey: versionStr)
            NSUserDefaults.standardUserDefaults().synchronize()
            return LeadpageViewController()
        }
        
        return MainTabBarViewController()
    }
    
    private func showMainViewController(){
        let mainTabBarVC = MainTabBarViewController()
        window?.rootViewController = mainTabBarVC
        
        
    }
    
    deinit{
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

