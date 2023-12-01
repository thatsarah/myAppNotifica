//
//  LabelDefault.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 01/12/23.
//

import UIKit

class LabelDefault: UILabel {
    init(text: String) {
        super.init(frame: .zero)
        initDefault(text: text)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String) {
        
        self.text = text
        self.textColor = .textLabelColor
        self.font = UIFont(name: "SFProDisplay-Light", size: 16)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
