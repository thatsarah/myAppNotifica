//
//  HomeViewController.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 07/12/23.
//

import UIKit

class HomeViewController: ViewControllerDefault { 
    
    let viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
           self.viewModel = viewModel
           super.init(nibName: nil, bundle: nil)
       }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var homeView: HomeView = {
        let homeView = HomeView(viewModel: viewModel)
        return homeView
    }()
    
    override func loadView() {
        self.view = homeView
    }
    
    @objc
        func handleAdd() {
            viewModel.didTapAdd()
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Ocorrências"
        navigationItem.rightBarButtonItem = .init(title: "Add", style: .plain, target: self, action: #selector(handleAdd))

    }
    
}



