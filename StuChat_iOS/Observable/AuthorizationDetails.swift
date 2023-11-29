//
//  AuthorizationDetails.swift
//  StuChat_iOS
//
//  Created by Arthur Garagulya on 23.11.2023.
//

import Foundation

class AuthorizationDetails : ObservableObject {
    
    enum AuthorizationState : Equatable {
        case unauthorized
        case authorized
    }
    
    @Published var isAuthorized: AuthorizationState = .unauthorized
}
