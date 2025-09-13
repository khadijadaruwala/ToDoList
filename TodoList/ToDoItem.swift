//
//  ToDoItem.swift
//  TodoList
//
//  Created by Khadija Daruwala on 2025-09-11.
//


import Foundation

struct ToDoItem: Identifiable{
    
    var id: UUID = UUID()
    var title: String
    var important: Bool = false
    
    init(title: String, important: Bool) {
        self.title = title
        self.important = important
    }
}

