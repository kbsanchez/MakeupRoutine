//
//  ProductSelectList.swift
//  MakeupRoutine
//

import SwiftUI

struct ProductSelectList: View {
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
                    NavigationLink(destination: ProductSelectView(product: product)) {
                        ProductCard(product: product)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct ProductSelectList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            ProductSelectList(products: Product.all)
        }
    }
}
