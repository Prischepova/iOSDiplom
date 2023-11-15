//
//  Resources.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 02.04.2023.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor(hexString: "#02029E")
        static var inactive = UIColor(hexString: "#3D3DA6")
        
        static var seporator = UIColor(hexString: "#7C84DD")
        static var background = UIColor(hexString: "#7C84DD")
        static var backgroundNavBar = UIColor(hexString: "#768CF6")
        static var titleGray = UIColor(hexString: "#FFFFFF")
        static var backgroundBlur = UIColor(hexString: "#452A7C")
        
        
        static var tabBarItemAccent: UIColor {
            #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        }
        static var mainWhite: UIColor {
            #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)
        }
        static var tabBarItemLight: UIColor {
            #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 0.5)
        }
    }
    
    enum Strings {
        enum TabBar {
            static var feed = "Главная"
            static var schedule = "Расписание"
            static var training = "Индив"
        }
    }
    
    enum Images {
        enum TabBar {
            static var feed = UIImage(named: "home")
            static var schedule = UIImage(named: "schedule")
            static var training = UIImage(named: "person")
        }
    }
    
    enum Fonts {
        static func systemFont(with size: CGFloat) -> UIFont {
            UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.semibold)
        }
        
        static func systemFontRegular(with size: CGFloat) -> UIFont {
            UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.regular)
        }
    }
    
    enum FeedItemType {
        case stories(FeedStoriesCellInfo)
    }
}
