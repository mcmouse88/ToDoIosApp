//
//  User.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 22.05.2026.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
