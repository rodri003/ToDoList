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
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Image(systemName: "eye")
                    Text("Show the New View!")
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
    }
}

#Preview {
    ToDoListView()
}


