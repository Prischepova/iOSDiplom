//
//  ProfilView.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 05.04.2023.
//

import SnapKit
import UIKit

class ProfilView: UIView {
    
    var nameLabel = UILabel()
    
    // MARK: - Init
    init() {
        super.init(frame: .zero)
        initialize()
        addnameLabel()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addnameLabel() {
        nameLabel.text = "И"
        nameLabel.textColor = Resources.Colors.backgroundNavBar
    }

    // MARK: - Private constants
    private enum UIConstants {
        static let logoWidth: CGFloat = 44
        static let logoHeight: CGFloat = 44
    }

    // MARK: - Private properties
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "profil")
        return view
    }()
}

// MARK: - Private methods
private extension ProfilView {
    func initialize() {
        addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIConstants.logoWidth)
            make.height.equalTo(UIConstants.logoHeight)
        }
        
        addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.bottom.right.equalTo(imageView)
            make.leading.equalTo(imageView.snp.trailing).offset(1)
            make.height.equalToSuperview().offset(-1)
            make.left.equalToSuperview().offset(14)
        }
    }
}
