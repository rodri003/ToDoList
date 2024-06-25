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
        toDos.append(ToDo(id: UUID().uuidString, item: "Learn Swift"))
        toDos.append(ToDo(id: UUID().uuidString, item: "Build Apps"))
        toDos.append(ToDo(id: UUID().uuidString, item:"Change the World!"))
    }
    func saveToDo(toDo: ToDo) {
        // if new, append to toDoVm.todos, else update the toDo that was passed from the List
//        if newToDo {
        if toDo.id == nil {
            var newToDo = toDo
            newToDo.id = UUID().uuidString
            toDos.append(newToDo)
        } else {
            if let index = toDos.firstIndex(where: { $0.id == toDo.id }) {
                toDos[index] = toDo
            }
        }
    }
    func deleteToDo (indexSet: IndexSet) {
        toDos.remove(atOffsets: indexSet)
    }
    
    func moveToDo (fromOffsets: IndexSet, toOffset: Int) {
        toDos.move(fromOffsets: fromOffsets, toOffset: toOffset)
    }
}
