//
//  CategoryView.swift
//  MakeupRoutine
//
//  Created by Keylin Sanchez on 5/27/22.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var products: [Product] {
        return Product.all.filter{ $0.type == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            ProductList(products: products)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.blush)
    }
}
