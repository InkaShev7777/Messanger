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
    
    @MainActor
    static func fetchAllUsers(limit: Int? = nil) async throws -> [User]{
        let query = FirestoreConstants.UserCollection
        if let limit { query.limit(to: limit) }
        let snapshot = try await query.getDocuments()
        return snapshot.documents.compactMap({ try? $0.data(as: User.self) })
    }
    
    static func fetchUser(withUid uid: String, completion: @escaping(User) -> Void) {
        FirestoreConstants.UserCollection.document(uid).getDocument { snapshot, _ in
            guard let user = try? snapshot?.data(as: User.self) else { return }
            completion(user)
        }
        
        print("Hello")
    }
}
