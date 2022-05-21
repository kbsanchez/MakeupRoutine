//
//  ProductModel.swift
//  MakeupRoutine
//

import Foundation

enum Category: String {
    case primer = "Primer"
    case base = "Base"
    case concealer = "Concealer"
    case bronzer = "Bronzer"
    case blush = "Blush"
    case highlight = "Highlight"
    case lips = "Lip product"
    case lash = "Lash"
    case eyeliner = "Eyeliner"
}

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let brand: String
    let image: String
    let type: Category.RawValue
    let dateAdded: String
    let shelfLife: String
    let color: String
    let coverage: String
    let notes: String
}

extension Product {
    static let all: [Product] = [
        Product(
            name: "Soft Pinch Liquid Blush",
            brand: "Rare Beauty by Selena Gomez",
            image: "https://www.sephora.com/productimages/sku/s2518959-main-zoom.jpg?imwidth=630",
            type: "Blush",
            dateAdded: "05/21/2022",
            shelfLife: "12 months",
            color: "True mauve",
            coverage: "Medium",
            notes: "Free of sulfates SLS and SLES, parabens, formaldehydes, formaldehyde-releasing agents, phthalates, mineral oil, retinyl palmitate, oxybenzone, coal tar, hydroquinone, triclosan, and triclocarban, and contains less than one percent of synthetic fragrances. This product is also vegan and cruelty-free."
        )
    ]
}
