//
//  TextFieldDefault.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 01/12/23.
//

import UIKit

class TextFieldDefault: UITextField {
    
    init(text: String) {
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

private func initDefault(text: String) {
    
    self.backgroundColor = .textFieldBackgroundColor
    self.placeholder = text
    self.translatesAutoresizingMaskIntoConstraints = false
    
}

}
