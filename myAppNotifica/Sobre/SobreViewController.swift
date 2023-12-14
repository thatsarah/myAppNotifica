//
//  SobreViewController.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 13/12/23.
//

import UIKit

class SobreViewController: ViewControllerDefault {
    
    lazy var sobreView: SobreView = {
        let sobreView = SobreView()
        
        return sobreView
    }()
    
    override func loadView() {
        self.view = sobreView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
}
