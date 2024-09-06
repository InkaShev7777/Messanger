//
//  ChatView.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 05.09.2024.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    let user: User
    
    var body: some View {
        VStack {
            ScrollView {
                //header
                VStack {
                    CircularProfileImageView(user: user, size: .xLarge)
                    
                    VStack(spacing: 4) {
                        Text(user.fullname)
                            .font(.title3)
                            .fontWeight(.semibold)
                            
                        
                        Text("Messenger")
                            .font(.footnote)
                            .foregroundStyle(Color(.systemGray))
                    }
                }
                
                //messages
                
                ForEach(0 ... 8, id: \.self) { message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
            }
            //message imput view
            
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Rectangle())
                    .font(.subheadline)
                    .cornerRadius(10)
                    
                
                Button {
                    // send message
                    
                } label: {
                     Text("Send")
                        .fontWeight(.semibold)
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

#Preview {
    ChatView(user: User.MOCK_USER)
}
