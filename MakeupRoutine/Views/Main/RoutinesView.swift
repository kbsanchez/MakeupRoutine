//
//  RoutinesView.swift
//  MakeupRoutine
//

import SwiftUI

struct RoutinesView: View {
    var body: some View {
        NavigationView {
            Text("Routines")
                .navigationTitle("Routines")
        }
        .navigationViewStyle(.stack)
    }
}

struct RoutinesView_Previews: PreviewProvider {
    static var previews: some View {
        RoutinesView()
    }
}
