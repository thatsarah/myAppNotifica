//
//  LoginViewController.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 20/11/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginView()
    
    var goToRegisterHandler: (() -> Void)?
    
    // var viewMain = LoginView {
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "LOGAR"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        loginView.buttonRegistrar.addTarget(self, action: #selector(goToRegister), for: .touchUpInside)
    }
    
    @objc private func goToRegister() {
        goToRegisterHandler?()
    }
}

