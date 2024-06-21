//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Rafael Rodriguez on 6/17/24.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var toDosVM = ToDosViewModel()  // created a var of the class so it needs ()
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .environmentObject(toDosVM)  // Makes it available to all the Views that come after this
        }
    }
}
