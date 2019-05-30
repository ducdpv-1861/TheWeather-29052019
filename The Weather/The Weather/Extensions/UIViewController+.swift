//
//  UIViewController+.swift
//  The Weather
//
//  Created by pham.van.ducd on 5/30/19.
//  Copyright © 2019 pham.van.ducd. All rights reserved.
//

import UIKit
import MBProgressHUD

extension UIViewController {
    func makeTabBarItem(title: String, image: UIImage?, tag: Int) {
        let tabBarItem = RAMAnimatedTabBarItem(title: title, image: image, tag: tag)
        tabBarItem.animation = RAMBounceAnimation()
        self.tabBarItem = tabBarItem
    }
    
    func hideNavigationBar() {
        navigationController?.isNavigationBarHidden = true
    }
    
    func hideTabBar(_ isHidden: Bool) {
        if let tabBarController = tabBarController as? RAMAnimatedTabBarController {
            tabBarController.animationTabBarHidden(isHidden)
        }
    }
}
