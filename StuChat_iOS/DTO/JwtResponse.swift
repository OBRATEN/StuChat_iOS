//
//  JwtResponse.swift
//  StuChat_iOS
//
//  Created by Arthur Garagulya on 21.11.2023.
//

import Foundation

struct JwtResponse:Codable {
    private var token: String
    
    init(token: String) {
        self.token = token
    }
    
    public func getToken() -> String {
        return self.token
    }
    
    public mutating func setToken(token: String) {
        self.token = token
    }
}
