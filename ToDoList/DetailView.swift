//
//  DetailView.swift
//  ToDoList
//
//  Created by Rafael Rodriguez on 6/17/24.
//

import SwiftUI

struct DetailView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image (systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundColor(.orange)
            
            Text("You Are a Swifty Legend!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Get Back!") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
//        .navigationBarBackButtonHidden()
        .padding()
    }
}

#Preview {
    DetailView()
}
