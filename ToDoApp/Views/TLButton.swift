//
//  TLButton.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 23.05.2026.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundColor(backgroundColor)

                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
                    .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    TLButton(title: "Some Title", backgroundColor: .blue, action: {})
}
