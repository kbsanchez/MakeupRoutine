//
//  EditProfileView.swift
//  MakeupRoutine
//

import SwiftUI

struct EditProfileView: View {
    @State private var name: String = ""
    @State private var aboutMe: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Edit Name", text: $name)
                }
                
                Section(header: Text("About me")) {
                    TextEditor(text: $aboutMe)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                            .foregroundColor(.pink)
                    }
                }
                ToolbarItem {
                    Button {
                        
                    } label: {
                        Label("Done", systemImage: "checkmark")
                            .foregroundColor(.pink)
                    }
                }
            })
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
