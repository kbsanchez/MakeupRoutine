//
//  ProductList.swift
//  MakeupRoutine
//
//  Created by Keylin Sanchez on 5/27/22.
//

import SwiftUI

struct ProductList: View {
    var products: [Product]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(products.count) \(products.count > 1 ? "products" : "product")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                    Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(products) { product in
                    NavigationLink(destination: ProductView(product: product)) {
                        ProductCard(product: product)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ProductList(products: Product.all)
        }
    }
}
