//
//  CreateToDo.swift
//  TodoList
//
//  Created by Khadija Daruwala on 2025-09-15.
//

import SwiftUI

struct CreateToDo: View {
    @State var toDoTitle = ""
    @State var important = false
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var todDoStore: ToTodoItemStore
    
    var body: some View {
        List{
            Section{
                 TextField("Ex. Walk the dog", text: $toDoTitle)
            }
            Section{
                Toggle("Important", isOn: $important)
            }
            Section{
                HStack{
                    Spacer()
                    Button("Save"){
                        self.todDoStore.toDoItems.append(ToDoItem(title: self.toDoTitle, important: self.important))
                        self.presentationMode.wrappedValue.dismiss()
                    }.disabled(toDoTitle.isEmpty)
                    Spacer()
                }
     
            }
        }.listStyle(GroupedListStyle())
        
    }
}

#Preview {
    CreateToDo()
}
