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
    func saveToDo(toDo: ToDo, newToDo: Bool) {
        // if new, append to toDoVm.todos, else update the toDo that was passed from the List
        if newToDo {
            toDos.append(toDo)
        } else {
            if let index = toDos.firstIndex(where: { $0.id == toDo.id }) {
                toDos[index] = toDo
            }
        }
    }
}
