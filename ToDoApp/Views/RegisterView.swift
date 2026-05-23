//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 22.05.2026.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            HeaderView(
                title: "Register",
                subtitle: "Start organizing todos",
                angle: -15,
                backgroundColor: .orange
            )
            
            Form {
                TextField("Full Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create an Account",
                    backgroundColor: .green
                ) {
                    // Attempt to register
                }
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
