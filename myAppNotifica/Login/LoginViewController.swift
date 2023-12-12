//
//  LoginViewController.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 20/11/23.
//

import UIKit

class LoginViewController: ViewControllerDefault {
    
    var goToRegisterHandler: (() -> Void)?
    var goToHomeHandler: (() -> Void)?
        
    let loginView = LoginView()
    
    override func loadView() {
        self.view = loginView
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "Logar"
            loginView.buttonRegistrar.addTarget(self, action: #selector(goToRegister), for: .touchUpInside)
            loginView.buttonLogar.addTarget(self, action: #selector(goToHome), for: .touchUpInside)
            
        }
        
        @objc private func goToRegister() {
            goToRegisterHandler?()
        }
        
        @objc private func goToHome() {
            goToHomeHandler?()
        }
    }
    

    


