//
//  AuthorizationHandler.swift
//  StuChat_iOS
//
//  Created by Arthur Garagulya on 21.11.2023.
//

import Foundation
import Alamofire

final class AuthorizationService {
    public func signupRequest(request: SignupRequest) -> (Bool, String) {
        var resultFlag: Bool = false
        AF.request("http://192.168.101.28:8189/signup", method: .post, parameters: ["username": request.getUsername(), "email": request.getEmail(), "password": request.getPassword()], encoding: JSONEncoding.default).validate(statusCode: 200..<300).validate(contentType: ["application/json"]).response { response in
            switch response.result {
                case .success(_):
                    resultFlag = true
                case .failure(let error):
                    print(error.localizedDescription)
                    resultFlag = true
            }
        }
        return (resultFlag, "")
    }
    
    public func signinRequest(request: SigninRequest) -> (Bool, String) {
        var resultFlag: Bool = false
        var jwt: String = ""
        AF.request("http://192.168.101.28:8189/signin", method: .post, parameters: ["username": request.getUsername(), "password": request.getPassword()], encoding: JSONEncoding.default).validate(statusCode: 200..<300).validate(contentType: ["application/json"]).response { response in
            print(response)
            switch response.result {
                case .success(let data):
                    let jwt_response: JwtResponse = try! JSONDecoder().decode(JwtResponse.self, from: data!)
                    jwt = jwt_response.getToken()
                    resultFlag = true
                case .failure(let error):
                    resultFlag = false
                    print(error.localizedDescription)
            }
            
        }
        return (resultFlag, jwt)
    }
}
