//
//  HeaderView.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 22.05.2026.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack {
                Text("ToDo List")
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                
                Text("Get things done")
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }
            .padding(.top, 30)
        }
        .frame(height: 300)
        .containerRelativeFrame(.horizontal) { width, _ in width * 3 }
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
