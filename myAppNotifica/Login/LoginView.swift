//
//  LoginView.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 20/11/23.
//

import UIKit

class LoginView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackgroundColor
        setUpVisualElements()
    }
    
    var imageLogin = ImageDefault(image: "logoImage")
    var imageLabel = LabelDefault(text: "Registre e gerencie as ocorrências do seu IF")
    var emailTextField = TextFieldDefault(placeholder: "E-mail", keyboardType: .emailAddress, returnKeyType: .next)
    var passwordTextField: TextFieldDefault = {
        let text = TextFieldDefault(placeholder: "Senha", keyboardType: .emailAddress, returnKeyType: .done)
        text.isSecureTextEntry = true
        
        return text
    }()
    var buttonLogar = ButtonDefault(text: "LOGAR")
    var buttonRegistrar = ButtonDefault(text: "REGISTRAR")
    
    func setUpVisualElements() {
        passwordTextField.delegate = self
        emailTextField.delegate = self
        self.addSubview(imageLogin)
        self.addSubview(imageLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)


        NSLayoutConstraint.activate([
            
            imageLogin.widthAnchor.constraint(equalToConstant: 274.99),
            imageLogin.heightAnchor.constraint(equalToConstant: 82.64),
            imageLogin.topAnchor.constraint(equalTo: self.topAnchor, constant: 228),
            imageLogin.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 57),
            imageLogin.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -57),

            imageLabel.widthAnchor.constraint(equalToConstant: 100),
            imageLabel.topAnchor.constraint(equalTo: imageLogin.bottomAnchor, constant: 5),
            imageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            imageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),

            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: imageLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        
            passwordTextField.widthAnchor.constraint(equalToConstant: 374),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 25),
            buttonLogar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonLogar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonRegistrar.widthAnchor.constraint(equalToConstant: 374),
            buttonRegistrar.heightAnchor.constraint(equalToConstant: 60),
            buttonRegistrar.topAnchor.constraint(equalTo: buttonLogar.bottomAnchor, constant: 25),
            buttonRegistrar.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            buttonRegistrar.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
        ])
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    }

extension LoginView: UITextFieldDelegate { 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            self.passwordTextField.becomeFirstResponder()
        } else { 
            textField.resignFirstResponder()
        }
        return true
    }
    
}
