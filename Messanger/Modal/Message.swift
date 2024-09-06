//
//  Message.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 06.09.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

struct Message: Identifiable, Hashable, Codable {
    @DocumentID var messageId: String?
    
    let fromId: String
    let toId: String
    let messageText: String
    let timestamp: Timestamp
    
    var user: User?
    
    var id: String {
        return messageId ?? NSUUID().uuidString
    }
    
    var chatPartnerId: String {
        return fromId == Auth.auth().currentUser?.uid ? toId : fromId
    }
    
    var isFromCurrentUser: Bool {
        return fromId == Auth.auth().currentUser?.uid
    }
}
