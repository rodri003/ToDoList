//
//  ToDo.swift
//  ToDoList
//
//  Created by Rafael Rodriguez on 6/20/24.
//

import Foundation
struct ToDo: Identifiable {
    //    var id: ObjectIdentifier // Created by fixing fix on the error. It created a variable but a better practice is a constant
//    let id = UUID().uuidString // Let Swift assing a unique ObjectIndentifier using UUID().uuid String ensures that it is a string
    var id: String?
    var item = ""
    var remindeerIsOn = false
    var dueDate = Date.now + (60*60*24)
    var notes = ""
    var isCompleted = false
}
