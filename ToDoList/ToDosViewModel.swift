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
//        purgeData()  / Use to purge persistent data from live View. Change "toDos" to appropriate name that you're using
        loadData()
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
        saveData()
    }
    
    func deleteToDo (indexSet: IndexSet) {
        toDos.remove(atOffsets: indexSet)
        saveData()
    }
    
    func moveToDo (fromOffsets: IndexSet, toOffset: Int) {
        toDos.move(fromOffsets: fromOffsets, toOffset: toOffset)
        saveData()
    }
    
    func loadData() {
        let path = URL.documentsDirectory.appending(component: "toDos")
        guard let data = try? Data(contentsOf: path) else {return}
        do {
            toDos = try JSONDecoder().decode(Array<ToDo>.self, from: data)
        } catch {
            print("😡 ERROR: Could not load data \(error.localizedDescription)")
        }
    }
    
    func saveData() {
        let path = URL.documentsDirectory.appending(component: "toDos")
        let data = try? JSONEncoder().encode(toDos)  // try? means if error is thrown, data = nil
        do {
            try data?.write(to: path)
        } catch {
            print("😡 ERROR: Could not save data \(error.localizedDescription)")
        }
    }
    
    func purgeData() {
        let path = URL.documentsDirectory.appending(component: "toDos")
        let data = try? JSONEncoder().encode("")
        do {
            try data?.write(to: path)
        } catch {
            print("😡 ERROR: Could not save data \(error.localizedDescription)")
        }
    }
}
