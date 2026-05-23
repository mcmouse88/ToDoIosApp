//
//  LoginView.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 22.05.2026.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(
                    title: "ToDo List",
                    subtitle: "Get things done",
                    angle: 15,
                    backgroundColor: Color.pink
                )
                
                // Login Form
                Form {
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(
                        title: "Log In",
                        backgroundColor: .blue
                    ) {
                        // Attempt log in
                    }
                }
                .offset(y: -50)
                
                // Create Accunt
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account") {
                        RegisterView()
                    }
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
