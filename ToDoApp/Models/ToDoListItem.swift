//
//  ToDoListItem.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 22.05.2026.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
