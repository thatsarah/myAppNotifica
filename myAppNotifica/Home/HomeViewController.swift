//
//  HomeViewController.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 07/12/23.
//

import UIKit

class HomeViewController: ViewControllerDefault { 
    
    lazy var homeView: HomeView = {
        let homeView = HomeView()
        return homeView
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Home"
    }
}
