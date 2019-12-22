//
//  TTBaseTabBarViewController.swift
//  DrawBoardTianTianNew
//
//  Created by yang liu on 2019/12/22.
//  Copyright © 2019 Yang Liu. All rights reserved.
//

import UIKit
import ESTabBarController_swift
    
    //自定义导航栏退出后隐藏toolBar
    class BCNavigationVC: UINavigationController {
        override func pushViewController(_ viewController: UIViewController, animated: Bool) {
            
            if viewControllers.count > 0 {
                viewController.hidesBottomBarWhenPushed = true; }
            super.pushViewController(viewController, animated: animated)
        }
    }
    
    class TTBaseTabBarVC {
        
        static func tabbarWithNavigationStyle() -> ESTabBarController{
            //初始化tabBarController
            let tabBarController = ESTabBarController().then { (make) in
                make.delegate = nil
                make.title = "Irregularity"
                make.tabBar.shadowImage = UIImage(named: "transparent")
                make.tabBar.backgroundImage = UIImage(named: "background_dark")
                
                let drawBoardVC = ViewController()
                //第一个tab
                let onePageNavVC = BCNavigationVC(rootViewController: drawBoardVC)
                
                //分类
                let classVC = UIViewController()
                // 书架
                let bookVC = UIViewController()
                //我的
                let mineVC = UIViewController()
                drawBoardVC.tabBarItem = ESTabBarItem.init(BCIrregularityBasicContentView(), title: "首页", image: #imageLiteral(resourceName: "shop"), selectedImage: #imageLiteral(resourceName: "shop"))
                classVC.tabBarItem = ESTabBarItem.init(BCIrregularityBasicContentView(), title: "分类", image: #imageLiteral(resourceName: "brand"), selectedImage: #imageLiteral(resourceName: "branS"))
                bookVC.tabBarItem = ESTabBarItem.init(BCIrregularityBasicContentView(), title: "书架", image: UIImage(named: "shopCarSelect"), selectedImage: UIImage(named: "shopCarSelect"))
                mineVC.tabBarItem = ESTabBarItem.init(BCIrregularityBasicContentView(), title: "我的", image: UIImage(named: "mineSelect"), selectedImage: UIImage(named: "mineSelect"))
                
                make.viewControllers = [onePageNavVC, classVC, bookVC, mineVC]
            }
            return tabBarController
        }
}
