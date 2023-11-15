//
//TrainingViewController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 28.03.2023.
//

import UIKit
import SnapKit

class TrainingViewController: BaseViewController {

    var customTutorButton = Button()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Запись на индивидуальную тренировку"
        navigationController?.tabBarItem.title  = Resources.Strings.TabBar.training
        
        setupBottomButtonConstraints()
        addActionToBottomButton()
    }
    
    func setupBottomButtonConstraints() {
        self.view.addSubview(customTutorButton)
        customTutorButton.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(10)
            make.left.equalToSuperview().offset(10)
//            make.right.equalToSuperview().offset(-220)
        }
    }
    
    func addActionToBottomButton() {
        customTutorButton.addTarget(self, action: #selector(didTapMakeButton), for: .touchUpInside)
        customTutorButton.setImage(UIImage(named: "tutorV"), for: .normal)
        
    }
    
    @objc func didTapMakeButton() {
        let controller = MakeTableViewController()
        present(controller, animated: true)
    }

}
