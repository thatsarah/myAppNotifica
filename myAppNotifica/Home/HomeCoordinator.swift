//
//  File.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 07/12/23.
//

import UIKit

class HomeCoordinator: Coordinator { 
    
    private let navigationController: UINavigationController
    lazy var homeViewController: HomeViewController = {
        let viewController = HomeViewController()
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = HomeViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
