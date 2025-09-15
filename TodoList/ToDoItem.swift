//
//  ToDoItem.swift
//  TodoList
//
//  Created by Khadija Daruwala on 2025-09-11.
//


import Foundation

struct ToDoItem: Identifiable, Codable{
    
    var id: UUID = UUID()
    var title: String
    var important: Bool = false
    
    init(title: String, important: Bool) {
        self.title = title
        self.important = important
    }
}

class TodoItemStore: ObservableObject {
    
    @Published var toDoItems = [ToDoItem]() {
        didSet{
            UserDefaults.standard.set(try? PropertyListEncoder().encode(toDoItems), forKey: "toDoItems")
        }
    }
    
    init(){
        if let data = UserDefaults.standard.value(forKey: "toDoItems") as? Data {
            if let userDefaultsTodoItems = try? PropertyListDecoder().decode(Array<ToDoItem>.self, from: data){
                toDoItems = userDefaultsTodoItems
            }
        }
    }
}
