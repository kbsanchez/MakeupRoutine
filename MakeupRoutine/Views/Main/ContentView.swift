//
//  ContentView.swift
//  MakeupRoutine
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: AppViewModel
    
    @StateObject var favProducts = Favorites()
    
    var body: some View {
        NavigationView{
            if viewModel.signedIn {
                VStack {
                    TabBar()
                }
            }else {
                SignInView()
            }
        }
        .onAppear {
            viewModel.signedIn = viewModel.isSignedIn
        }
        .environmentObject(favProducts)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ProductsViewModel())
    }
}
