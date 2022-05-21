//
//  TabBar.swift
//  MakeupRoutine
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            RoutinesView()
                .tabItem {
                    Label("Routines", systemImage: "wand.and.stars")
                }
            
            CreateView()
                .tabItem {
                    Label("Create", systemImage: "plus")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
