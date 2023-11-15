//
//  Label.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 29.03.2023.
//

import UIKit

class Label: UILabel {
    

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLabel()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupLabel()
    }
    
    
    func setupLabel() {
        textColor = Resources.Colors.active
//        font = UIFont.systemFont(ofSize: 12)
        font = UIFont.systemFont(ofSize: 12, weight: UIFont.Weight.semibold)
//        font = UIFont(name: ".SFProText-Bold", size: 14)

    }
}
