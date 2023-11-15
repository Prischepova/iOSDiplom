//
//  ViewController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 02.04.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
}

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        configure()

    }
}

extension BaseViewController {
    func addViews() {}
    
    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = .white
        let background = UIImage(named: "backgroundForViews")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
    }
    
    @objc func navBarLeftButtonHandler() {
      print("NavBar right button tapped")
    }
    
    @objc func navBarRightButtonHandler() {
        print("NavBar left button tapped")

    }
}

//extension BaseViewController {
//    func addNavBarButton(at position: NavBarPosition, with title: String){
//        let button = UIButton(type: .system)
//        button.setTitle(title, for: .normal)
//        button.setTitleColor(Resources.Colors.active, for: .normal)
//        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
//
//        switch position {
//        case .left:
//            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
//            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
//        case .right:
////            button = UIBarButtonItem(image: UIImage(systemName: "bell"), style: .plain, target: self, action: #selector(navBarRightButtonHandler))
//
//            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
//            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
//        }
//    }
//}

