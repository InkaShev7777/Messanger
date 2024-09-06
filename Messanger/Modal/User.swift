//
//  User.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 05.09.2024.
//

import Foundation

struct User: Codable, Identifiable, Hashable {
    var id = NSUUID().uuidString
    let fullname: String
    let email: String
    var profileImageUrl: String?
    
}

extension User {
    static let MOCK_USER = User(fullname: "Ilya Shevchenko", email: "inkashev777@gmail.com", profileImageUrl: "profile-test-image")
}
