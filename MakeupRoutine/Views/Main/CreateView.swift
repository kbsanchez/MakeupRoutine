//
//  CreateView.swift
//  MakeupRoutine
//
//  Created by Keylin Sanchez on 5/19/22.
//

import SwiftUI

struct CreateView: View {
    var body: some View {
        NavigationView {
            Text("Create")
                .navigationTitle("Create")
        }
        .navigationViewStyle(.stack)
    }
}

struct CreateView_Previews: PreviewProvider {
    static var previews: some View {
        CreateView()
    }
}
