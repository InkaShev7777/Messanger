//
//  SettingsOptionsViewModel.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 05.09.2024.
//

import Foundation
import SwiftUI

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accessebility
    case privacy
    case notifications
    
    var id: Int { return self.rawValue}
    
    var title: String {
        switch self {
            
        case .darkMode: return "Dark mode"
        case .activeStatus: return "Active status"
        case .accessebility: return " Accessebility"
        case .privacy: return "Privacy"
        case .notifications: return "Notifications"
        }
    }
    
    var imageName: String {
        switch self {
            
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .accessebility: return "person.circle.fill"
        case .privacy: return "lock.circle.fill"
        case .notifications: return "bell.circle.fill"
        }
    }
    
    var imageBackgroundColor: Color {
        switch self {
            
        case .darkMode: return Color(.black)
        case .activeStatus: return Color(.systemGreen)
        case .accessebility: return Color(.black)
        case .privacy: return Color(.systemBlue)
        case .notifications: return Color(.systemPurple)
        }
    }
}
