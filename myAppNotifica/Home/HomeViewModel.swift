//
//  HomeViewModel.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 13/12/23.
//

import Foundation

class HomeViewModel {
    var coordinator: HomeCoordinator
    
    init(coordinator: HomeCoordinator) {
        self.coordinator = coordinator
    }
    
    func didTapAdd(){
        coordinator.presentNovaOcorrencia()
        
    }
}
