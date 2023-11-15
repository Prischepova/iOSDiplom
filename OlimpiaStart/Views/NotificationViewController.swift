//
//  NotificationViewController.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 29.03.2023.
//

import UIKit
import SnapKit

class NotificationViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addBackground()
        title = "Уведомления"
    }
    
    func addBackground() {
          let background = UIImage(named: "background")

          var imageView : UIImageView!
          imageView = UIImageView(frame: view.bounds)
          imageView.contentMode =  UIView.ContentMode.scaleAspectFill
          imageView.clipsToBounds = true
          imageView.image = background
          imageView.center = view.center
          view.addSubview(imageView)
          self.view.sendSubviewToBack(imageView)
      }
    
}
