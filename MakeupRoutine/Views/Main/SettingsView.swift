//
//  SettingsView.swift
//  MakeupRoutine
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    
    var body: some View {
        NavigationView {
            Button(action: {
                viewModel.signOut()
            }, label: {
                Text("Sign Out")
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 50)
                    .cornerRadius(8)
                    .background(Color.indigo)
                    .padding()
            })
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
