//
//  RoutinesView.swift
//  MakeupRoutine
//

import SwiftUI

struct RoutinesView: View {
    
    var body: some View {
        VStack {
            NavigationView {
                    List {
                        Section(header: Text("My Routines"), footer: Text("Tap 'Create' to add a new routine")) {
                            Text("No saved routines")
                        }
                    }.listStyle(InsetGroupedListStyle())
                .navigationTitle("Routines")
            }
            .navigationViewStyle(.stack)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct RoutinesView_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesView()
    }
}
