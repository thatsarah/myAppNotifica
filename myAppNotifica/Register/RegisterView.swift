//
//  LoginView.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 20/11/23.
//

import UIKit

class RegisterView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackgroundColor
        setUpVisualElements()
    }
    
    var registerLabel = LabelDefault(text: "Entre com seu e-mail e senha para se registrar")
    var emailTextField = TextFieldDefault(placeholder: "E-mail", keyboardType: .emailAddress, returnKeyType: .next)
    var passwordTextField: TextFieldDefault = {
        let text = TextFieldDefault(placeholder: "Senha", keyboardType: .emailAddress, returnKeyType: .next)
        text.isSecureTextEntry = true
        
        return text
    }()
    var confirmTextField: TextFieldDefault = {
        let text = TextFieldDefault(placeholder: "Confirme sua senha", keyboardType: .emailAddress, returnKeyType: .done)
        text.isSecureTextEntry = true
        
        return text
    }()
    
    var buttonLogar = ButtonDefault(text: "LOGAR")
    var buttonRegistrar = ButtonDefault(text: "REGISTRAR")
    
    func setUpVisualElements() {
        self.addSubview(registerLabel)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(confirmTextField)
        self.addSubview(buttonLogar)
        self.addSubview(buttonRegistrar)
        
        
        NSLayoutConstraint.activate([
            
            
            registerLabel.widthAnchor.constraint(equalToConstant: 100),
            registerLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 220),
            registerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            registerLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            
            emailTextField.widthAnchor.constraint(equalToConstant: 374),
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.topAnchor.constraint(equalTo: registerLabel.bottomAnchor, constant: 70),
            emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            passwordTextField.widthAnchor.constraint(equalToConstant: 374),
            passwordTextField.heightAnchor.constraint(equalToConstant: 60),
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 23),
            passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            confirmTextField.widthAnchor.constraint(equalToConstant: 374),
            confirmTextField.heightAnchor.constraint(equalToConstant: 60),
            confirmTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 23),
            confirmTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            confirmTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16),
            
            buttonLogar.widthAnchor.constraint(equalToConstant: 374),
            buttonLogar.heightAnchor.constraint(equalToConstant: 60),
            buttonLogar.topAnchor.constraint(equalTo: confirmTextField.bottomAnchor, constant: 25),
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

extension RegisterView: UITextFieldDelegate { 
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextField {
            self.passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField { 
            confirmTextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
    
}
