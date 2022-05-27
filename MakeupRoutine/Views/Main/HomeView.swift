//
//  HomeView.swift
//  MakeupRoutine
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            //ScrollView {
                List {
                    ForEach(Category.allCases) { category in
                        NavigationLink {
                            CategoryView(category: category)
                        } label: {
                            Text(category.rawValue + "s")
                        }
                    }
                }
            //}
            .navigationTitle("Product Categories")
        }
        .navigationViewStyle(.stack)
        
        
//        NavigationView {
//            ScrollView {
//                ProductList(products: Product.all)
//            }
//            .navigationTitle("My Products")
//        }
//        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
