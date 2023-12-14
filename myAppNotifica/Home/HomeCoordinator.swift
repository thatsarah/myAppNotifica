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
        let viewModel = HomeViewModel(coordinator: self)
        let viewController = HomeViewController(viewModel: viewModel)
        
        viewController.tabBarItem.title = "Home"
        viewController.tabBarItem.image = UIImage(systemName: "homekit")
        
        return viewController
    }()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        self.navigationController.setViewControllers([homeViewController], animated: false)
    }
    
    func presentNovaOcorrencia ( ){
            let viewModel = NovaOcorrenciaViewModel(coordinator: self)
            let viewController = NovaOcorrenciaViewController(viewModel: viewModel)
            let navigationNovaOcorrencia = UINavigationController(rootViewController: viewController)
            navigationController.present(navigationNovaOcorrencia, animated: true)
        }
    
}
