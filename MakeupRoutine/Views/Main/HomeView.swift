//
//  HomeView.swift
//  MakeupRoutine
//

import SwiftUI

struct HomeView: View {
    
    @State private var newProduct = false
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    Section(header: Text("Product Categories")) {
                        ForEach(Category.allCases) { category in
                            NavigationLink {
                                CategoryView(category: category)
                            } label: {
                                Text(category.rawValue)
                            }
                        }
                    }
                }.listStyle(InsetGroupedListStyle())
                
                .navigationTitle("Products")
                .toolbar(content: {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            newProduct.toggle()
                        }, label: {
                            Label("New product", systemImage: "plus.circle")
                                .foregroundColor(.pink)
                        })
                    }
                })
                
            }
            .navigationViewStyle(.stack)
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $newProduct) {
                AddProductView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
