//
//  User.swift
//  OlimpiaStart
//
//  Created by Ксения Прищепова on 29.03.2023.
//

import Foundation

struct User {
    let login: String?
    let passwords: String?
}

extension User {
    static var logins = [
        User(login: "kseniya", passwords: "1234")
    ]
}


