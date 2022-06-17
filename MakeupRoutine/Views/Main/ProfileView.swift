//
//  ProfileView.swift
//  MakeupRoutine
//

import SwiftUI

struct ProfileView: View {
    @State private var isShowingPhotoPicker = false
    @State private var isShowingSettings = false
    @State private var isShowingProfileEdit = false
    @State private var avatarImage = UIImage(named: "default-avatar")!
    
    var body: some View {
        NavigationView {
            VStack {
                Image(uiImage: avatarImage)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .padding()
                    .onTapGesture {
                        isShowingPhotoPicker = true
                    }
                
                Spacer()
                
                // User name
                
                // About me section
                
                // Current favorite products horizontal display
                
                // Published routines
                
            }
            .navigationTitle("Profile")
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        isShowingSettings.toggle()
                    }, label: {
                        Label("Settings", systemImage: "gear")
                            .foregroundColor(.pink)
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingProfileEdit.toggle()
                    } label: {
                        Label("Edit", systemImage: "pencil.circle")
                            .foregroundColor(.pink)
                    }
                }
            })
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $isShowingPhotoPicker, content: {
                PhotoPickerController(avatarImage: $avatarImage)
            })
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
            .sheet(isPresented: $isShowingProfileEdit, content: {
                EditProfileView()
            })
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
