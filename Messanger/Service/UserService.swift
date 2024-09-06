//
//  UserService.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 06.09.2024.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore

class UserService {
    
    @Published var currentUser: User?
    
    static let shared = UserService()
    
    @MainActor
    func fetchCurrentUser() async throws {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        let snaphot = try await Firestore.firestore().collection("users").document(uid).getDocument()
        let user = try snaphot.data(as: User.self)
        self.currentUser = user
    }
}
