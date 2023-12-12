//
//  SceneDelegate.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 20/11/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let window = (scene as? UIWindowScene) else { return }
        self.window?.makeKeyAndVisible()
        
        let navigationController = UINavigationController()
        self.window?.rootViewController = navigationController
        let coordinator = LoginCoordinator(navigationController: navigationController)
        coordinator.start()
        
    }
    
}

