//
//  TextField.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 25.05.2023.
//

import UIKit

class TextField: UITextField {
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupTextField()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupTextField()
    }
    
    
    func setupTextField() {
        keyboardType = UIKeyboardType.default
        layer.cornerRadius = 20
        layer.masksToBounds = true
        backgroundColor = UIColor.clear
        layer.borderWidth = 2
        layer.borderColor = Resources.Colors.backgroundBlur.cgColor
        textColor = .white
        font = UIFont.systemFont(ofSize: 30)
        borderStyle = UITextField.BorderStyle.roundedRect
        contentVerticalAlignment = UIControl.ContentVerticalAlignment.center

    }
}
