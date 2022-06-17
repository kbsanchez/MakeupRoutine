//
//  FeedView.swift
//  MakeupRoutine
//
//  Created by Keylin Sanchez on 6/10/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView {
            Text("Feed")
                .navigationTitle("Feed")
        }
        .navigationViewStyle(.stack)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
