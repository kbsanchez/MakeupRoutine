//
//  SettingsView.swift
//  MakeupRoutine
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var viewModel: AppViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Button(action: {
                viewModel.signOut()
            }, label: {
                Text("Sign Out")
                    .foregroundColor(Color.white)
                    .frame(width: 200, height: 50)
                    .cornerRadius(8)
                    .background(Color.pink)
                    .padding()
            })
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .foregroundColor(.pink)
                    }
                }
            })
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
