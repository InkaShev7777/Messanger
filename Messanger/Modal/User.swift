//
//  User.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 05.09.2024.
//

import Foundation
import FirebaseFirestore

struct User: Codable, Identifiable, Hashable {
    @DocumentID var uid: String?
    
    let fullname: String
    let email: String
    var profileImageUrl: String?
    
    var id: String {
        return uid ?? NSUUID().uuidString
    }
    
    var firstName: String {
        let formatter = PersonNameComponentsFormatter()
        let components = formatter.personNameComponents(from: fullname)
        return components?.givenName ?? fullname
    }
    
}

extension User {
    static let MOCK_USER = User(fullname: "Ilya Shevchenko", email: "inkashev777@gmail.com", profileImageUrl: "profile-test-image")
}
