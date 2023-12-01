//
//  UIColor+.swift
//  myAppNotifica
//
//  Created by IFB-BIOTIC-08 on 01/12/23.
//

import UIKit

extension UIColor {
    static var viewBackgroundColor: UIColor {
        UIColor(named: "viewBackgroundColor") ?? .white
    }
    
    static var buttonBackgroundColor: UIColor {
        UIColor(named: "buttonBackgroundColor") ?? .lightGray
    }
    
    static var textLabelColor: UIColor {
        UIColor(named: "textLabelColor") ?? .black
    }
    
    static var textFieldBackgroundColor: UIColor {
        UIColor(named: "textFieldBackgroundColor") ?? .black
    }
    
    static var placeHolderColor: UIColor {
        UIColor(named: "placeHolderColor") ?? .white
    }
}
