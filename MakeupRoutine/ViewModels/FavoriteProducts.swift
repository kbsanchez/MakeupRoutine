//
//  FavoriteProducts.swift
//  MakeupRoutine
//

import Foundation

class Favorites: ObservableObject {
    private var favProducts: Set<UUID>
    private let saveKey = "Favorite Products"
    
    init() {
        favProducts = []
    }
    
    func contains(_ product: Product) -> Bool {
        favProducts.contains(product.id)
    }
    
    func add(_ product: Product) {
        objectWillChange.send()
        favProducts.insert(product.id)
        save()
    }
    
    func remove(_ product: Product) {
        objectWillChange.send()
        favProducts.remove(product.id)
        save()
    }
    
    func save() {
        
    }
}
