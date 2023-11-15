//
//  DocumentsViewController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 30.03.2023.
//

import UIKit
import SnapKit

class DocumentsViewController: BaseViewController {
    
    var infoButton = Button()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Документы"
        initialize()
    }
}

// MARK: - Private methods
private extension DocumentsViewController {
    func initialize() {
        navigationItem.rightBarButtonItems = makeRightBarButtonItems()
    }
    
    func makeRightBarButtonItems() -> [UIBarButtonItem] {
        let addBarButtonItem = UIBarButtonItem(image: UIImage(named: "info"), style: .plain, target: self, action: #selector(didTapInfoButton))
        addBarButtonItem.tintColor = .white
        return [addBarButtonItem]
    }
    
    @objc func didTapInfoButton() {
        let alertInfo = UIAlertController(title: "Информация", message: "Оформить страховку вы можете на сайте ***.ru", preferredStyle: .alert)
        
        alertInfo.addAction(UIAlertAction(title: "Ок", style: .cancel, handler: nil))
        alertInfo.addAction(UIAlertAction(title: "Перейти", style: .default, handler: { action in guard let url = URL(string: "https://vk.com/olimpiastart") else { return }
            UIApplication.shared.open(url)}))
                
        present(alertInfo, animated: true)
    }
    
//    func makeRightBarButtonItems() -> [UIBarButtonItem] {
//        let logoBarButtonItem = UIBarButtonItem(customView: InfoView())
//        return [logoBarButtonItem]
//    }
}
