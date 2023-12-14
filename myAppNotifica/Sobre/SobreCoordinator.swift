//
//  SobreCoordinator.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 13/12/23.
//


import UIKit

class SobreCoordinator: Coordinator { 
    
    private let navigationController: UINavigationController
    lazy var sobreViewController: SobreViewController = {
        let viewController = SobreViewController()
        viewController.tabBarItem.title = "Sobre"
        viewController.tabBarItem.image = UIImage(systemName: "info.square")
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        self.navigationController.setViewControllers([sobreViewController], animated: false)
    }
}
