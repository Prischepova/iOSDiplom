//
//  InfoView.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 05.04.2023.
//

import SnapKit
import UIKit

class InfoView: UIView {
    
    // MARK: - Init
    init() {
        super.init(frame: .zero)
        initialize()
        addActionToBottomButton()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Private constants
    private enum UIConstants {
        static let logoWidth: CGFloat = 33
        static let logoHeight: CGFloat = 33
    }

    var imageView = Button()
    
    func addActionToBottomButton() {
        imageView.setImage(UIImage(named: "info"), for: .normal)
    }
}

// MARK: - Private methods
private extension InfoView {
    func initialize() {
        addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIConstants.logoWidth)
            make.height.equalTo(UIConstants.logoHeight)
        }
    }
}
