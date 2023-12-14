//
//  TabBarCoordinator.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 13/12/23.
//

import UIKit

class TabBarCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabbarController = TabBarController()
        tabbarController.modalPresentationStyle = .overFullScreen
        let homeNavigation = UINavigationController()
        let homeViewCoordinator = HomeCoordinator(navigationController: homeNavigation)
        homeViewCoordinator.start()
        
        
        let sobreNavigation = UINavigationController()
        let sobreViewCoordinator = SobreCoordinator(navigationController: sobreNavigation)
        sobreViewCoordinator.start()
        
        let navigationControllers = [homeNavigation, sobreNavigation]
        tabbarController.setViewControllers(navigationControllers, animated: true)
        
        self.navigationController.present(tabbarController, animated: true)
    }
}

