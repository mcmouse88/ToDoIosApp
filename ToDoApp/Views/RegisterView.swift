//
//  RegisterView.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 22.05.2026.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            HeaderView(
                title: "Register",
                subtitle: "Start organizing todos",
                angle: -15,
                backgroundColor: .orange
            )
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
