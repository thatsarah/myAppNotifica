//
//  RegisterCoordinator.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 07/12/23.
//

import UIKit

class RegisterCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        
        self.navigationController.pushViewController(viewController, animated: true)
        
    }
}

