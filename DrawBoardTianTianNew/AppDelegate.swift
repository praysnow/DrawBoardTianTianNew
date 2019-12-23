//
//  AppDelegate.swift
//  DrawBoardTianTianNew
//
//  Created by yang liu on 2019/12/14.
//  Copyright © 2019 Yang Liu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame:UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        //自定义tabBar入口
//        window?.rootViewController = TTBaseTabBarVC.tabbarWithNavigationStyle()
//        画写板入口
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        window?.makeKeyAndVisible()
        return true
    }
    
}

