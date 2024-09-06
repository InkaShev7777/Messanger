//
//  Constants].swift
//  Messanger
//
//  Created by Ilya Schevchenko on 06.09.2024.
//

import Foundation
import Firebase

struct FirestoreConstants {
    static let UserCollection = Firestore.firestore().collection("users")
    static let MessagesCollection = Firestore.firestore().collection("messages")
}
