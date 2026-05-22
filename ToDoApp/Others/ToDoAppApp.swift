//
//  ToDoAppApp.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 22.05.2026.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
