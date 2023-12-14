//
//  LoginCoordinator.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 20/11/23.
//

import UIKit

class LoginCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let registerCoordinator = RegisterCoordinator(navigationController: self.navigationController)
        let homeCoordinator = HomeCoordinator(navigationController: self.navigationController)
        let viewController = LoginViewController()
        
        viewController.goToRegisterHandler = {
            registerCoordinator.start()
        }
        
        viewController.goToHomeHandler = {
            homeCoordinator.start()
            
        }
        self.navigationController.pushViewController(viewController, animated: true)
        
    }
    
    func  gotoRegister() {
            let coordinator = RegisterCoordinator(navigationController: navigationController)
            coordinator.start()
        }
            func  gotoHome() {
               let coordinator = TabBarCoordinator(navigationController: navigationController)
                coordinator.start()
            }
}
