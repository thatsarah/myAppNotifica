//
//  ViewDefault.swift
//  myAppNotifica
//
//  Created by Sarah Rodrigues on 12/12/23.
//

import UIKit

class ViewDefault: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .viewBackgroundColor
        setUpVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpVisualElements() {
        
    }
}
