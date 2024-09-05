//
//  ChatView.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 05.09.2024.
//

import SwiftUI

struct ChatView: View {
    @State private var messageText = ""
    
    var body: some View {
        VStack {
            ScrollView {
                //header
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    
                    VStack(spacing: 4) {
                        Text("Ilya Shevchenko")
                            .font(.title3)
                            .fontWeight(.semibold)
                            
                        
                        Text("Messenger")
                            .font(.footnote)
                            .foregroundStyle(Color(.systemGray))
                    }
                }
                //messages
                
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
    ChatView()
}
