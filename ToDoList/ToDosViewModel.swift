//
//  ToDosViewModel.swift
//  ToDoList
//
//  Created by Rafael Rodriguez on 6/20/24.
//

import Foundation

class ToDosViewModel: ObservableObject {
    @Published var toDos: [ToDo] = []
}
