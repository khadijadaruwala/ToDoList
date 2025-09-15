//
//  ToDoList.swift
//  TodoList
//
//  Created by Khadija Daruwala on 2025-09-11.
//

import SwiftUI

struct ToDoList: View {
    @EnvironmentObject var toDoStore: TodoItemStore

    var body: some View {
        NavigationView{
            List{
                ForEach(toDoStore.toDoItems){ todo in
                    
                    if todo.important {
                        Text(todo.title).bold().foregroundColor(.white).padding(4).background(Rectangle().foregroundColor(.red).cornerRadius(5))
                    } else{
                        Text(todo.title)
                    }
                }.onDelete(perform: { indexSet in
                    if let index = indexSet.first {
                        self.toDoStore.toDoItems.remove(at: index)
                    }
                })
            }.navigationTitle("To Dos").navigationBarItems(trailing: NavigationLink(destination: CreateToDo()){
                Text("Add")
            })
        }
      
    }
}

#Preview {
    ToDoList().environmentObject(TodoItemStore())
}
