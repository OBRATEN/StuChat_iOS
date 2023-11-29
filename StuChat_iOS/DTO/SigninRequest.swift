//
//  LoginRequest.swift
//  StuChat_iOS
//
//  Created by Arthur Garagulya on 21.11.2023.
//

import Foundation

struct SigninRequest {
    private var username: String
    private var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
    public func getUsername() -> String {
        return self.username
    }
    
    public func getPassword() -> String {
        return self.password
    }
    
    public mutating func setUsername(username: String) {
        self.username = username
    }
    
    public mutating func setPassword(password: String) {
        self.password = password
    }
}
