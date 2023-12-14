//
//  TabBarController.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 13/12/23.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: true)
        self.tabBar.tintColor = .buttonBackgroundColor
        self.tabBar.isTranslucent = true
        UITabBar.appearance().barTintColor = .viewBackgroundColor
    }
}

