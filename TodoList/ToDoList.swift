//
//  ToDoList.swift
//  TodoList
//
//  Created by Khadija Daruwala on 2025-09-11.
//

import SwiftUI

struct ToDoList: View {
    var body: some View {
        List{
            ForEach([ToDoItem(title:"Buy milk",important: true),ToDoItem(title:"Buy eggs",important: false),ToDoItem(title:"Walk the dog", important: false)]){ todo in
                
                if todo.important {
                    Text(todo.title).bold().foregroundColor(.white).padding(4).background(Rectangle().foregroundColor(.red).cornerRadius(5))
                } else{
                    Text(todo.title)
                }
            }
        }
    }
}

#Preview {
    ToDoList()
}
