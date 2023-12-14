//
//  NovaOcorrenciaView.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 13/12/23.
//

import UIKit

class NovaOcorrenciaView: UIView {
    
    var viewModel: NovaOcorrenciaViewModel
    
    var onCameraTap: (() -> Void)?
    
    var goToHomeHandler: (() -> Void)?
    
    
     init(viewModel: NovaOcorrenciaViewModel) {
        self.viewModel = viewModel
        super.init(frame: .zero)
        self.backgroundColor = .viewBackgroundColor
        setUpVisualElements()
    }
    
    lazy var myImage: UIImageView = {
        let view = UIImageView ()
        view.image = UIImage(named: "cameraImage")
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(cameraTap))
                view.addGestureRecognizer(tapGestureRecognizer)
                view.isUserInteractionEnabled = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    } ()
    
    lazy var titleTextField = TextFieldDefault(placeholder: "Título", keyboardType: .default, returnKeyType: .next)
    
    lazy var descriptionTextField = TextFieldDefault(placeholder: "Descrição", keyboardType: .default, returnKeyType: .next)
    
    lazy var locationTextField = TextFieldDefault(placeholder: "Localização", keyboardType: .default, returnKeyType: .next)
    
    lazy var statusTextField = TextFieldDefault(placeholder: "Status", keyboardType: .default, returnKeyType: .done)
    
    lazy var saveButton =  ButtonDefault(text: "SALVAR")
    
    func setUpVisualElements() {
        
        addSubview(myImage)
        addSubview(titleTextField)
        addSubview(descriptionTextField)
        addSubview(locationTextField)
        addSubview(statusTextField)
        addSubview(saveButton)
        
        
        NSLayoutConstraint.activate([
            
            myImage.heightAnchor.constraint(equalToConstant: 200),
            myImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            myImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            myImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            titleTextField.widthAnchor.constraint(equalToConstant: 374),
            titleTextField.heightAnchor.constraint(equalToConstant: 60),
            titleTextField.topAnchor.constraint(equalTo: myImage.bottomAnchor, constant: 20),
            titleTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            titleTextField.trailingAnchor.constraint(equalTo:self.trailingAnchor,constant:  -15),
            
            
            descriptionTextField.widthAnchor.constraint(equalToConstant: 374),
            descriptionTextField.heightAnchor.constraint(equalToConstant: 60),
            descriptionTextField.topAnchor.constraint(equalTo: titleTextField.bottomAnchor, constant: 5),
            descriptionTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            descriptionTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            locationTextField.widthAnchor.constraint(equalToConstant: 374),
            locationTextField.heightAnchor.constraint(equalToConstant: 60),
            locationTextField.topAnchor.constraint(equalTo: descriptionTextField.bottomAnchor, constant: 5),
            locationTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            locationTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            statusTextField.widthAnchor.constraint(equalToConstant: 374),
            statusTextField.heightAnchor.constraint(equalToConstant: 60),
            statusTextField.topAnchor.constraint(equalTo: locationTextField.bottomAnchor, constant: 5),
            statusTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            statusTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            
            
            saveButton.widthAnchor.constraint(equalToConstant: 374),
            saveButton.heightAnchor.constraint(equalToConstant: 60),
            saveButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            saveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func cameraTap() {
         self.onCameraTap?()
     }
    
    @objc private func goToHome() {
        goToHomeHandler?()
    }
     
     func setImage (image: UIImage){
         myImage.image = image
     }
    
}


