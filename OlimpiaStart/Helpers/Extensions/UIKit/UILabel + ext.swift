//
//  UILabel + ext.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 12.04.2023.
//

import UIKit

extension UILabel {
    convenience init(text: String, font: UIFont?, alignment: NSTextAlignment = .left) {
        self.init()
        
        self.text = text
        self.font = font
        self.textColor = .black
        self.textAlignment = alignment
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
//        self.backgroundColor = .red
    }
}
