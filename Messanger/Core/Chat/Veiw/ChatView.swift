//
//  ChatView.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 05.09.2024.
//

import SwiftUI

struct ChatView: View {
    @StateObject var viewModel: ChatViewModel
    let user: User
    
    init(user: User) {
        self.user = user
        self._viewModel = StateObject(wrappedValue: ChatViewModel(user: user))
    }
    
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
                
                ForEach(viewModel.messages) { message in
                    ChatMessageCell(message: message)
                }
            }
            //message imput view
            
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $viewModel.messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Rectangle())
                    .font(.subheadline)
                    .cornerRadius(10)
                    
                
                Button {
                    // send message
                    viewModel.sendMessage()
                    viewModel.messageText = ""
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
