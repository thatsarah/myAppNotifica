//
//  TextFieldDefault.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 01/12/23.
//

import UIKit

class TextFieldDefault: UITextField {
    
    init(placeholder: String) {
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyboardType: .default, returnKeyType: .default)
    }
    
    init(placeholder: String, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        super.init(frame: .zero)
        initDefault(placeholder: placeholder, keyboardType: keyboardType, returnKeyType: returnKeyType)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func initDefault(placeholder: String, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
    
    self.backgroundColor = .textFieldBackgroundColor
    self.placeholder = placeholder
    self.keyboardType = keyboardType
    self.returnKeyType = returnKeyType
    self.translatesAutoresizingMaskIntoConstraints = false
    
}

}
