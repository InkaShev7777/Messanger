//
//  ProfileView.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 05.09.2024.
//

import SwiftUI
import PhotosUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewModel()
    var body: some View {
        VStack {
            // heaer
            VStack {
                PhotosPicker(selection: $viewModel.selectedItem) {
                    if let profileImage = viewModel.profileImage {
                        profileImage
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundStyle(Color(.systemGray4))
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundStyle(Color(.systemGray4))
                    }
                }
                
                Text("Ilya Shevchenko")
                    .font(.title2)
                    .fontWeight(.semibold)
                
            }
            //list settings
            List {
                Section {
                    ForEach(SettingsOptionsViewModel.allCases) { option in
                        HStack {
                            Image(systemName: option.imageName)
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(option.imageBackgroundColor)
                            
                            Text(option.title)
                                .font(.subheadline)
                        }
                    }
                }
                
                //buttons
                Section {
                    Button("Log Out") {
                        
                    }
                    
                    Button("Delete Account") {
                        
                    }
                }
                .foregroundStyle(Color(.red))
            }
        }
    }
}

#Preview {
    ProfileView()
}
