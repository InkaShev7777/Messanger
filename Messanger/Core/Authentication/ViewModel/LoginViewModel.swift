//
//  LoginViewModel.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 06.09.2024.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}

