//
//  InboxViewModel.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 06.09.2024.
//

import Foundation
import Combine
import Firebase

class InboxViewModel: ObservableObject {
    @Published var currentUser: User?
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        setupSubscribers()
    }
    
    private func setupSubscribers() {
        UserService.shared.$currentUser.sink { [weak self ] user in
            self?.currentUser = user
        }.store(in: &cancellables)
    }
}
