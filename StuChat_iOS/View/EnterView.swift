//
//  EnterView.swift
//  StuChat_iOS
//
//  Created by Arthur Garagulya on 21.11.2023.
//

import Foundation
import SwiftUI

struct EnterView:View {
    var authHandler: AuthorizationService = AuthorizationService();
    
    @State var isLoginMode: Bool = true
    @State var username: String = ""
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 16) {
                    Picker(selection: $isLoginMode, label: Text("Picker")) {
                        Text("Login").tag(true)
                        Text("Create account").tag(false)
                    }.pickerStyle(SegmentedPickerStyle()).padding()
                    Button {
                    } label: {
                        Image(systemName: "person.fill").font(.system(size: 64)).padding()
                    }
                    Group {
                        TextField("Username", text: $username)
                        if (!isLoginMode) {
                            TextField("Email", text: $email)
                        }
                        SecureField("Password", text: $password)
                    }.padding(12)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10).stroke(.blue)
                        }
                    Button {
                        onEnterButtonAction()
                    } label: {
                        HStack {
                            Spacer()
                            Text(isLoginMode ? "Log In" : "Create account").foregroundStyle(.white).padding(.vertical, 10)
                            Spacer()
                        }.background(Color.blue)
                    }
                }.padding()
            }
            .navigationTitle(isLoginMode ? "Log In" : "Create Account")
            .background(Color(.init(white: 0, alpha: 0.05))
                .ignoresSafeArea())
        }
    }
    
    public func onEnterButtonAction() {
        if (isLoginMode) {
            
        }
    }
}
