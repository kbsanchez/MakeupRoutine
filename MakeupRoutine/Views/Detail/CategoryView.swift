//
//  CategoryView.swift
//  MakeupRoutine
//

import SwiftUI

struct CategoryView: View {
    @EnvironmentObject var productsVM: ProductsViewModel
    
    var category: Category
    
    var products: [Product] {
        return productsVM.products.filter{ $0.type == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            ProductList(products: products)
        }
        .toolbar(content: {
            EditButton()
                .foregroundColor(.pink)
            
        })
        .navigationTitle(category.rawValue)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.blush)
            .environmentObject(ProductsViewModel())
    }
}
