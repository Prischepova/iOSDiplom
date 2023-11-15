//
//  UIResponder.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 12.04.2023.
//

import UIKit

extension UIResponder {
    func next<T:UIResponder>(ofType: T.Type) -> T? {
        let r = self.next
        if let r = r as? T ?? r?.next(ofType: T.self) {
            return r
        } else {
            return nil
        }
    }
}
