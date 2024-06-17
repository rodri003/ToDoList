//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Rafael Rodriguez on 6/17/24.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        DetailView()
                    } label: {
                        Text("Winter")
                    }
                    Text("Summer")
                } header: {
                    Text("Breaks")
                }
                Section {
                    Text("Spring")
                    Text("Fall")
                } header: {
                    Text("Semesters")
                }
            }
            .navigationTitle("School Year")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain
            )
        }
    }
}

#Preview {
    ToDoListView()
}


