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
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
        
    }
}
