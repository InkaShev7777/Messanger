//
//  ChatBubble.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 05.09.2024.
//

import SwiftUI

struct ChatBubble: Shape {
    let isCurrentUser: Bool
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
            byRoundingCorners: [
                .topLeft,
                .topRight,
                isCurrentUser ? .bottomLeft : .bottomRight
            ],
            cornerRadii: CGSize(width: 16, height: 16))
        
        return Path(path.cgPath)
    }
}

#Preview {
    ChatBubble(isCurrentUser: true)
}
