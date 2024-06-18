//
//  DetailView.swift
//  ToDoList
//
//  Created by Rafael Rodriguez on 6/17/24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var toDo = ""
    @State private var remindeerIsOn = false
    @State private var dueDate = Date.now + (60*60*24)
    @State private var notes = ""
    @State private var isCompleted = false
    
    var passedValue: String
    
    var body: some View {
        NavigationStack{
            List {
                TextField("Enter To Do Here", text: $toDo)
                    .font(.title)
                    .textFieldStyle(.roundedBorder)
                    .padding(.vertical)
                    .listRowSeparator(.hidden)
                
                Toggle("Set Reminder:", isOn: $remindeerIsOn)
                    .padding(.top)
                    .listRowSeparator(.hidden)
                
                DatePicker("Date", selection: $dueDate)
                    .listRowSeparator(.hidden)
                    .padding(.bottom)
                    .disabled(!remindeerIsOn)
                
                Text("Notes:")
                    .padding(.top)
                TextField("Notes", text: $notes, axis: .vertical)
                    .textFieldStyle(.roundedBorder)
                    .listRowSeparator(.hidden)
                
                Toggle("Completed:", isOn: $isCompleted)
                    .padding(.top)
                    .listRowSeparator(.hidden)
                    .listRowSeparator(.hidden)
                
            }
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        //TODO: Add Save Code Here
                    }
                }
            }
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)        }

    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}
