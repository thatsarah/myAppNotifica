//
//  LoginViewController.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 20/11/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    var viewMain = LoginView {
        
        override func loadView() {
            self.view = viewMain
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.title = "LOGAR"
            self.navigationController?.navigationBar.prefersLargeTitles = true
        }
        
    }
}
