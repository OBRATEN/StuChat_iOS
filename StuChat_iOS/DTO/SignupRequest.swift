//
//  SignupRequest.swift
//  StuChat_iOS
//
//  Created by Arthur Garagulya on 21.11.2023.
//

import Foundation

struct SignupRequest {
    private var username: String
    private var email: String
    private var password: String
    
    public init(username: String, email: String, password: String) {
        self.username = username
        self.email = email
        self.password = password
    }
    
    public func getUsername() -> String {
        return self.username
    }
    
    public func getEmail() -> String {
        return self.email
    }
    
    public func getPassword() -> String {
        return self.password
    }
    
    public mutating func setUsername(username: String) {
        self.username = username
    }
    
    public mutating func setEmail(email: String) {
        self.email = email
    }
    
    public mutating func setPassword(password: String) {
        self.password = password
    }
}
