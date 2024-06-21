//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Rafael Rodriguez on 6/17/24.
//

import SwiftUI

struct ToDoListView: View {
    @State private var sheetIsPresented = false
    @EnvironmentObject var toDosVM: ToDosViewModel  // Accesses the envrionment object created in ToDoListApp
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDosVM.toDos) { toDo in
                    NavigationLink {
                       DetailView(toDo: toDo)
                    } label: {
                        Text(toDo.item)
                    }
                    .font(.title2)
                }
            }
            .navigationTitle("To Do List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        sheetIsPresented.toggle()
                    }, label: {
                       Image(systemName: "plus")
                    })
                }
            }
            .sheet(isPresented: $sheetIsPresented, content: {
                NavigationStack {
                    DetailView(toDo: ToDo()) // new value
                }
            })
//            .fullScreenCover(isPresented: $sheetIsPresented, content: {
//                DetailView(passedValue: "")
//            })
        }
    }
}

#Preview {
    ToDoListView()
        .environmentObject(ToDosViewModel())
}


