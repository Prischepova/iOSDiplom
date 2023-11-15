//
//  Button.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 29.03.2023.
//

import UIKit

class Button: UIButton {
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    
    func setupButton() {
        setShadow()
        setTitleColor(.white, for: .normal)
        
//        backgroundColor      = .white
        titleLabel?.font     = UIFont(name: "AvenirNext-DemiBold", size: 18)
        layer.cornerRadius   = 25
//        layer.borderWidth    = 3.0
//        layer.borderColor    = UIColor.darkGray.cgColor
    }
    
    
    private func setShadow() {
        layer.shadowColor   = Resources.Colors.backgroundBlur.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 6.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
    
//    func shake() {
//        let shake           = CABasicAnimation(keyPath: "position")
//        shake.duration      = 0.1
//        shake.repeatCount   = 2
//        shake.autoreverses  = true
//        
//        let fromPoint       = CGPoint(x: center.x - 8, y: center.y)
//        let fromValue       = NSValue(cgPoint: fromPoint)
//        
//        let toPoint         = CGPoint(x: center.x + 8, y: center.y)
//        let toValue         = NSValue(cgPoint: toPoint)
//        
//        shake.fromValue     = fromValue
//        shake.toValue       = toValue
//        
//        layer.add(shake, forKey: "position")
//    }
}
