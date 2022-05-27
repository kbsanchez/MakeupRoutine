//
//  ProductModel.swift
//  MakeupRoutine
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case primer = "Primer"
    case base = "Base"
    case concealer = "Concealer"
    case bronzer = "Bronzer"
    case blush = "Blush"
    case highlight = "Highlighter"
    case lips = "Lip product"
    case lash = "Lash product"
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
            name: "Hydro Grip Hydrating Makeup Primer",
            brand: "Milk Makeup",
            image: "https://www.sephora.com/productimages/sku/s2169423-main-zoom.jpg?imwidth=612",
            type: "Primer",
            dateAdded: "05/21/2022",
            shelfLife: "24 months",
            color: "Clear",
            coverage: "",
            notes: "This silicone-free, oil-free makeup primer goes on clear to work across all skin tones and types. The lightweight grippy texture helps foundation go on smoothly and stay locked on all day. The airless container keeps formula fresh and ensures all product gets used."
        ),
        Product(
            name: "Airbrush Flawless Longwear Foundation",
            brand: "Charlotte Tilbury",
            image: "https://www.sephora.com/productimages/sku/s2244796-main-zoom.jpg?imwidth=612",
            type: "Base",
            dateAdded: "05/21/2022",
            shelfLife: "12 months",
            color: "7 Warm - for medium skin with warm undertones",
            coverage: "Full coverage",
            notes: "Hydrating, lightweight formula. Sweat-proof, humidity-proof, waterproof, and transfer-resistant. For best results, start by applying Charlotte's Magic Cream (sold separately) to prime the skin."
        ),
        Product(
            name: "Radiant Creamy Concealer",
            brand: "Nars",
            image: "https://www.sephora.com/productimages/sku/s2172310-main-zoom.jpg?imwidth=612",
            type: "Concealer",
            dateAdded: "05/21/2022",
            shelfLife: "12 months",
            color: "Madeleine - L2.3 - Light with neutral undertones",
            coverage: "Medium coverage",
            notes: "This multipurpose concealer can also be used to highlight and contour."
        ),
        Product(
            name: "Sun Stalk'r Instant Warmth Bronzer",
            brand: "Fenty Beauty by Rihanna",
            image: "https://www.sephora.com/productimages/sku/s2210995-main-zoom.jpg?imwidth=612",
            type: "Bronzer",
            dateAdded: "05/21/2022",
            shelfLife: "12 months",
            color: "Private Island - light to medium with warm undertones",
            coverage: "",
            notes: "Soft-matte finish."
        ),
        Product(
            name: "Soft Pinch Liquid Blush",
            brand: "Rare Beauty by Selena Gomez",
            image: "https://www.sephora.com/productimages/sku/s2518959-main-zoom.jpg?imwidth=630",
            type: "Blush",
            dateAdded: "05/21/2022",
            shelfLife: "12 months",
            color: "True mauve",
            coverage: "Medium coverage",
            notes: ""
        ),
        Product(
            name: "Killawatt Freestyle Highlighter",
            brand: "Fenty Beauty by Rihanna",
            image: "https://www.sephora.com/productimages/sku/s1925908-main-zoom.jpg?imwidth=612",
            type: "Highlighter",
            dateAdded: "05/21/2022",
            shelfLife: "12 months",
            color: "Girl Next Door/Chic Phreak - soft pink sheen / supercharged peachy pink shimme",
            coverage: "",
            notes: "Long-wearing highlighter for all skin tones. Cream-powder hybrid."
        ),
        Product(
            name: "Dior Addict Lip Maximizer Plumping Gloss",
            brand: "Dior",
            image: "https://www.sephora.com/productimages/sku/s2171668-main-zoom.jpg?imwidth=612",
            type: "Lip product",
            dateAdded: "05/21/2022",
            shelfLife: "24 months",
            color: "012 Rosewood - rosewood glossy",
            coverage: "",
            notes: "Formula contains volumizing spheres of hyaluronic acid for powerful hydration and a fuller lip effect."
        ),
        Product(
            name: "Lilly Lashes Lite Faux Mink Lashes",
            brand: "Lilly Lashes",
            image: "https://www.sephora.com/productimages/sku/s2373538-main-zoom.jpg?imwidth=612",
            type: "Lash product",
            dateAdded: "05/21/2022",
            shelfLife: "",
            color: "Miami Lite - round lash style, complimentary to all eye shapes",
            coverage: "",
            notes: ""
        ),
        Product(
            name: "Stay All Day Waterproof Liquid Eye Liner",
            brand: "Stila",
            image: "https://www.sephora.com/productimages/sku/s1221084-main-zoom.jpg?imwidth=612",
            type: "Eyeliner",
            dateAdded: "05/21/2022",
            shelfLife: "6 months",
            color: "Intense Black - jet black",
            coverage: "Full coverage",
            notes: "Thin, marker-like tip"
        ),
    ]
}
