//
//  Route.swift
//  Messanger
//
//  Created by Ilya Schevchenko on 06.09.2024.
//

import Foundation

enum Route: Hashable {
    case profile(User)
    case chatView(User)
    
}
