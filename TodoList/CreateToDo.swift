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
    
    var body: some View {
        List{
            Section{
                TextField("Ex. Walk the dog", text: $toDoTitle)
            }
            Section{
                Toggle("Important", isOn: $important)
            }
        }.listStyle(GroupedListStyle())
        
    }
}

#Preview {
    CreateToDo()
}
