//
//  AuthService.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 06.09.2024.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthService {
    
    func login(withEmail email: String, password: String) async throws {
        print("DEBUG: Email is \(email), password is \(password)")
    }
    
    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Create user \(result.user.uid)")
        } catch {
            print("DEBUG: Faild to create user with error \(error.localizedDescription)")
        }
    }
}
