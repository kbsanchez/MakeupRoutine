//
//  ProductsViewModel.swift
//  MakeupRoutine
//

import Foundation

class ProductsViewModel: ObservableObject {
    @Published private(set) var products: [Product] = []
    
    init() {
        products = Product.all
    }
    
    func addProduct(product: Product) {
        products.append(product)
    }
    
    func deleteProduct(product: Product) {
        if let index = products.firstIndex(of: product) {
            products.remove(at: index)
        }
    }
}
