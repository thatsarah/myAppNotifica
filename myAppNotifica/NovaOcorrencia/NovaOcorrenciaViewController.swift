//
//  NovaOcorrenciaViewController.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 13/12/23.
//

import UIKit

class NovaOcorrenciaViewController: ViewControllerDefault {
    
    var goToHomeHandler: (() -> Void)?
    
    let viewModel: NovaOcorrenciaViewModel
        init(viewModel: NovaOcorrenciaViewModel) {
            self.viewModel = viewModel
            super.init(nibName: nil, bundle: nil)
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var novaOcorrenciaView: NovaOcorrenciaView = {
        let novaOcorrenciaView = NovaOcorrenciaView(viewModel: viewModel)
        
        novaOcorrenciaView.onCameraTap = {
            ChooseImage().imagePicker(self) {myImage in novaOcorrenciaView.setImage(image: myImage)}
        }
                
        return novaOcorrenciaView
    }()
    
    override func loadView() {
        self.view = novaOcorrenciaView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Nova Ocorrência"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        novaOcorrenciaView.saveButton.addTarget(self, action: #selector(saveOcorrencia), for: .touchUpInside)
    }
    
    @objc private func saveOcorrencia() {
        goToHomeHandler?()
        Ocorrencia(title: novaOcorrenciaView.titleTextField.text ?? "", description: "", location: "", date: Date.now, status: "")
        viewModel.
    }
}
