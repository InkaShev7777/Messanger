//
//  ChatViewModel.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 06.09.2024.
//

import Foundation

class ChatViewModel: ObservableObject {
    @Published var messageText = ""
    let user: User
    
    init(user: User) {
        self.user = user
    }
    
    func sendMessage() {
        MessageService.sendMessage(messageText, toUser: user)
    }
}
