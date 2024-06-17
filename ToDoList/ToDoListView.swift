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
                ForEach(0..<100, id: \.self) { number in
                    NavigationLink {
                        DetailView(passedValue: "Item \(number)")
                    } label: {
                        Text ("Item \(number)")
                    }
                    
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


