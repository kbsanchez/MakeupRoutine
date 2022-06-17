//
//  CategoryRoutineView.swift
//  MakeupRoutine
//
//  Created by Keylin Sanchez on 6/17/22.
//

import SwiftUI

struct CategoryRoutineView: View {
    @EnvironmentObject var productsVM: ProductsViewModel
    
    var category: Category
    
    var products: [Product] {
        return productsVM.products.filter{ $0.type == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            ProductSelectList(products: products)
        }
        .navigationTitle(category.rawValue)
    }
}

struct CategoryRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.blush)
            .environmentObject(ProductsViewModel())
    }
}
