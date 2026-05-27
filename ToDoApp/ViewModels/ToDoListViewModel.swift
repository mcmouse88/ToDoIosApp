//
//  ToDoListViewModel.swift
//  ToDoApp
//
//  Created by Razdobudko Sergei on 22.05.2026.
//

import Foundation
import Combine
import FirebaseFirestore

class ToDoListViewModel: ObservableObject {
    @Published var showNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(itemId: String) {
        let db = Firestore.firestore()
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(itemId)
            .delete()
    }
}
