//
//  ContentView.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 22.05.2026.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            ToDoListView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
