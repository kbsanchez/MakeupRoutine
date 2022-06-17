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
            
            FeedView()
                .tabItem {
                    Label("Feed", systemImage: "sparkles")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
            
        }
        .accentColor(.pink)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(ProductsViewModel())
    }
}
