//
//  NavBarController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 02.04.2023.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        view.backgroundColor = Resources.Colors.backgroundNavBar
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
//            .font: Resources.Fonts.helvelticaRegular(with: 17)
        ]
        
//        navigationBar.addBottomBorder(with: Resources.Colors.seporator, height: 1)
    }
}

