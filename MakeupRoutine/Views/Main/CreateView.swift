//
//  CreateView.swift
//  MakeupRoutine
//

import SwiftUI

struct CreateView: View {
    @State private var newRoutine = false
    
    var body: some View {
        NavigationView {
            Button(action: {
                newRoutine.toggle()
            }, label: {
                Text("Create a new routine")
                    .foregroundColor(.pink)
            })
        }
        .navigationViewStyle(.stack)
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $newRoutine) {
            AddRoutineView()
        }
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
