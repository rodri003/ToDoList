//
//  ToDosViewModel.swift
//  ToDoList
//
//  Created by Rafael Rodriguez on 6/20/24.
//

import Foundation

class ToDosViewModel: ObservableObject {
    @Published var toDos: [ToDo] = []
    
    init () {
        // Temp Data here.  Will enventually load in saved data
        toDos.append(ToDo(item: "Learn Swift"))
        toDos.append(ToDo(item: "Build Apps"))
        toDos.append(ToDo(item: "Change the World!"))
    }
}
