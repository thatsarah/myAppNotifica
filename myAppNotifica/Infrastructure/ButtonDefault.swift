//
//  ButtonDefault.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 01/12/23.
//

import UIKit

class ButtonDefault: UIButton {
    
    init(text: String) {
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

private func initDefault(text: String) {
    
    self.setTitle(text, for: .normal)
    self.backgroundColor = .buttonBackgroundColor
    self.layer.cornerRadius = 14
    self.translatesAutoresizingMaskIntoConstraints = false
    
}

}

