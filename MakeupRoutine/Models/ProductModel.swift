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
    case brows = "Brow product"
    case bronzer = "Bronzer"
    case blush = "Blush"
    case highlight = "Highlighter"
    case lips = "Lip product"
    case lash = "Lash product"
    case eyeliner = "Eyeliner"
}

enum Coverage: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case light = "Light"
    case medium = "Medium"
    case full = "Full"
    case buildable = "Buildable"
    
    case none = "N/A"
}

enum Finish: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case matte = "Matte"
    case radiant = "Radiant"
    case natural = "Natural"
    case satin = "Satin"
    case dewy = "Dewy"
    case highShine = "High Shine"
    case glitter = "Glitter"
    case shimmer = "Shimmer"
    case metallic = "Metallic"
    case creme = "Creme"
    case gel = "Gel"
    
    case none = "N/A"
}

struct Product: Identifiable, Equatable, Hashable {
    let id = UUID()
    let name: String
    let brand: String
    let image: String
    let type: Category.RawValue
    let dateAdded: String
    let shelfLife: String
    let color: String
    let coverage: Coverage.RawValue
    let finish: Finish.RawValue
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
            coverage: "N/A",
            finish: "Radiant",
            notes: "This silicone-free, oil-free makeup primer goes on clear to work across all skin tones and types. The lightweight grippy texture helps foundation go on smoothly and stay locked on all day. The airless container keeps formula fresh and ensures all product gets used."
        )
//        ),
//        Product(
//            name: "Yummy Skin Glow Serum with Hyaluronic Acid",
//            brand: "Danessa Myricks Beauty",
//            image: "https://www.sephora.com/productimages/sku/s2575322-main-zoom.jpg?imwidth=1224",
//            type: "Primer",
//            dateAdded: "06/02/2022",
//            shelfLife: "24 months",
//            color: "Main Squeeze - champagne gold for all skin types",
//            coverage: "N/A",
//            finish: "Radiant",
//            notes: "A skincare-infused, radiant priming serum that hydrates, preps, and protects skin for a lit-from-within glow."
//        ),
//        Product(
//            name: "Hy-Gen Skinglass Energizing & Hydrating Primer Serum",
//            brand: "Natasha Denona",
//            image: "https://www.sephora.com/productimages/sku/s2569499-main-zoom.jpg?imwidth=1224",
//            type: "Primer",
//            dateAdded: "06/02/2022",
//            shelfLife: "24 months",
//            color: "Clear",
//            coverage: "N/A",
//            finish: "Radiant",
//            notes: "A glass skin serum rich in antioxidants that acts as a primer to hydrate the skin."
//        ),
//        Product(
//            name: "The Liquid Silk Canvas: Featherweight Protective Primer",
//            brand: "Tatcha",
//            image: "https://www.sephora.com/productimages/sku/s2339711-main-zoom.jpg?imwidth=1224",
//            type: "Primer",
//            dateAdded: "06/02/2022",
//            shelfLife: "24 months",
//            color: "Clear",
//            coverage: "N/A",
//            finish: "Natural",
//            notes: "A weightless liquid primer that protects skin from pollutants and makeup while helping your look go on better and last longer."
//        ),
//        Product(
//            name: "Vitamin Enriched Face Base Priming Moisturizer",
//            brand: "Bobbi Brown",
//            image: "https://www.sephora.com/productimages/sku/s1292820-main-zoom.jpg?imwidth=1224",
//            type: "Primer",
//            dateAdded: "06/02/2022",
//            shelfLife: "24 months",
//            color: "Clear",
//            coverage: "N/A",
//            finish: "Natural",
//            notes: "A primer with moisturizing benefits for smooth makeup application—it’s the best of both worlds."
//        ),
//        Product(
//            name: "Airbrush Flawless Longwear Foundation",
//            brand: "Charlotte Tilbury",
//            image: "https://www.sephora.com/productimages/sku/s2244796-main-zoom.jpg?imwidth=612",
//            type: "Base",
//            dateAdded: "05/21/2022",
//            shelfLife: "12 months",
//            color: "7 Warm - for medium skin with warm undertones",
//            coverage: "Full",
//            finish: "Matte",
//            notes: "Hydrating, lightweight formula. Sweat-proof, humidity-proof, waterproof, and transfer-resistant. For best results, start by applying Charlotte's Magic Cream (sold separately) to prime the skin."
//        ),
//        Product(
//            name: "Revealer Skin-Improving Foundation SPF25 with Hyaluronic Acid and Niacinamide",
//            brand: "Kosas",
//            image: "https://www.sephora.com/productimages/sku/s2512291-main-zoom.jpg?imwidth=1224",
//            type: "Base",
//            dateAdded: "05/21/2022",
//            shelfLife: "12 months",
//            color: "Medium Neutral 220 - Medium with neutral cool undertones",
//            coverage: "Medium",
//            finish: "Natural",
//            notes: "A skin-reviving, SPF treatment foundation that blends like a second skin with a natural dreamy finish to blur, visibly smooth texture, and minimize pores."
//        ),
//        Product(
//            name: "Eaze Drop Blurring Skin Tint",
//            brand: "Fenty Beauty by Rihanna",
//            image: "https://www.sephora.com/productimages/sku/s2431864-main-zoom.jpg?imwidth=1224",
//            type: "Base",
//            dateAdded: "05/21/2022",
//            shelfLife: "12 months",
//            color: "12 - medium with warm golden undertones",
//            coverage: "Light",
//            finish: "Natural",
//            notes: "A lightweight, buildable light-to-medium coverage skin tint that leaves skin looking blurred and smoothed – in flexible shades for all."
//        ),
//        Product(
//            name: "Light Reflecting Advanced Skincare Foundation",
//            brand: "Nars",
//            image: "https://www.sephora.com/productimages/sku/s2514586-main-zoom.jpg?imwidth=1224",
//            type: "Base",
//            dateAdded: "05/21/2022",
//            shelfLife: "12 months",
//            color: "Barcelona - M4 - medium to medium-deep with warm undertones, and a golden tone",
//            coverage: "Medium",
//            finish: "Natural",
//            notes: "An advanced makeup-skincare-hybrid foundation with a natural finish that quickly blurs and smooths while visibly improving skin’s clarity over time."
//        ),
//        Product(
//            name: "Luminous Silk Perfect Glow Flawless Oil-Free Foundation",
//            brand: "Armani Beauty",
//            image: "https://www.sephora.com/productimages/sku/s1491380-main-zoom.jpg?imwidth=1224",
//            type: "Base",
//            dateAdded: "05/21/2022",
//            shelfLife: "12 months",
//            color: "7.5 - tan, peach",
//            coverage: "Medium",
//            finish: "Natural",
//            notes: "An award-winning, oil-free foundation that delivers buildable, medium coverage and a luminous, glowy-skin finish for a natural makeup look."
//        ),
//        Product(
//            name: "Radiant Creamy Concealer",
//            brand: "Nars",
//            image: "https://www.sephora.com/productimages/sku/s2172310-main-zoom.jpg?imwidth=612",
//            type: "Concealer",
//            dateAdded: "05/21/2022",
//            shelfLife: "12 months",
//            color: "Madeleine - L2.3 - Light with neutral undertones",
//            coverage: "Medium",
//            finish: "Radiant Finish",
//            notes: "This multipurpose concealer can also be used to highlight and contour."
//        ),
//        Product(
//            name: "Born This Way Super Coverage Multi-Use Concealer",
//            brand: "Too Faced",
//            image: "https://www.sephora.com/productimages/sku/s2190296-main-zoom.jpg?imwidth=1224",
//            type: "Concealer",
//            dateAdded: "06/02/2022",
//            shelfLife: "12 months",
//            color: "Snow - fairest rosy",
//            coverage: "Full",
//            finish: "Natural",
//            notes: "A hydrating, full-coverage, weightless, four-in-one formula that conceals, contours, highlights, and retouches in a wide range of flawless shades."
//        ),
//        Product(
//            name: "Backstage Concealer",
//            brand: "Dior",
//            image: "https://www.sephora.com/productimages/sku/s2509628-main-zoom.jpg?imwidth=1224",
//            type: "Concealer",
//            dateAdded: "06/02/2022",
//            shelfLife: "12 months",
//            color: "4N - medium skin with neutral undertones",
//            coverage: "Medium",
//            finish: "Radiant",
//            notes: "A caffeine-infused, radiant concealer that delivers waterproof and crease-proof full coverage with an innovative makeup brush applicator for precision."
//        ),
//        Product(
//            name: "Soft Matte Complete Concealer",
//            brand: "Nars",
//            image: "https://www.sephora.com/productimages/sku/s2371425-main-zoom.jpg?imwidth=1224",
//            type: "Concealer",
//            dateAdded: "06/02/2022",
//            shelfLife: "12 months",
//            color: "Marron Glacé - L2.8 - Light to medium with warm undertones, and a peach tone",
//            coverage: "Full",
//            finish: "Matte",
//            notes: "A full-coverage, oil-free concealer that conceals and blurs imperfections with a soft-matte, natural-looking finish."
//        ),
//        Product(
//            name: "Vanish™ Airbrush Concealer",
//            brand: "Hourglass",
//            image: "https://www.sephora.com/productimages/sku/s2302982-main-zoom.jpg?imwidth=1224",
//            type: "Concealer",
//            dateAdded: "06/02/2022",
//            shelfLife: "12 months",
//            color: "Sepia - light medium, neutral undertones",
//            coverage: "Full",
//            finish: "Natural",
//            notes: "A full-coverage, weightless, and waterproof concealer with microspherical powders that blurs and brightens for up to 16 hours of skin perfection."
//        ),
//        Product(
//            name: "Sun Stalk'r Instant Warmth Bronzer",
//            brand: "Fenty Beauty by Rihanna",
//            image: "https://www.sephora.com/productimages/sku/s2210995-main-zoom.jpg?imwidth=612",
//            type: "Bronzer",
//            dateAdded: "05/21/2022",
//            shelfLife: "12 months",
//            color: "Private Island - light to medium with warm undertones",
//            coverage: "N/A",
//            finish: "Matte",
//            notes: "Soft-matte finish."
//        ),
//        Product(
//            name: "Matte Cream Bronzer Stick",
//            brand: "Milk Makeup",
//            image: "https://www.sephora.com/productimages/sku/s2487007-main-zoom.jpg?imwidth=1224",
//            type: "Bronzer",
//            dateAdded: "06/202/2022",
//            shelfLife: "12 months",
//            color: "Blaze - deep bronze",
//            coverage: "N/A",
//            finish: "Matte",
//            notes: "A matte, cream bronzer that is formulated with hydrating ingredients for buildable, blendable color or contour."
//        ),
//        Product(
//            name: "Beautiful Skin Sun-Kissed Glow Cream Bronzer",
//            brand: "Charlotte Tilbury",
//            image: "https://www.sephora.com/productimages/sku/s2569333-main-zoom.jpg?imwidth=1224",
//            type: "Bronzer",
//            dateAdded: "06/202/2022",
//            shelfLife: "12 months",
//            color: "4 Deep - Warm Deep Bronze",
//            coverage: "N/A",
//            finish: "Natural",
//            notes: "A 16-hour wear cream bronzer in 4 beautiful sun-kissed shades for face and body that blurs skin, hydrates with hyaluronic acid, and is sweatproof."
//        ),
//        Product(
//            name: "No Limits Matte Bronzer",
//            brand: "LYS Beauty",
//            image: "https://www.sephora.com/productimages/sku/s2435444-main-zoom.jpg?imwidth=1224",
//            type: "Bronzer",
//            dateAdded: "06/202/2022",
//            shelfLife: "12 months",
//            color: "Courage - tan",
//            coverage: "N/A",
//            finish: "Matte",
//            notes: "A clean, talc-free, buildable matte bronzer that sculpts, defines, and livens up the complexion with a silky-smooth formula."
//        ),
//        Product(
//            name: "Soft Pinch Liquid Blush",
//            brand: "Rare Beauty by Selena Gomez",
//            image: "https://www.sephora.com/productimages/sku/s2518959-main-zoom.jpg?imwidth=630",
//            type: "Blush",
//            dateAdded: "05/21/2022",
//            shelfLife: "12 months",
//            color: "True mauve",
//            coverage: "Medium",
//            finish: "Matte",
//            notes: ""
//        ),
//        Product(
//            name: "BACKSTAGE Rosy Glow Blush",
//            brand: "Dior",
//            image: "https://www.sephora.com/productimages/sku/s2328375-main-zoom.jpg?imwidth=1224",
//            type: "Blush",
//            dateAdded: "06/02/2022",
//            shelfLife: "12 months",
//            color: "Pink - pink",
//            coverage: "N/A",
//            finish: "Natural",
//            notes: ""
//        ),
//        Product(
//            name: "Cheeky Tint Cream Blush Stick",
//            brand: "Huda Beauty",
//            image: "https://www.sephora.com/productimages/sku/s2555795-main-zoom.jpg?imwidth=1224",
//            type: "Blush",
//            dateAdded: "06/02/2022",
//            shelfLife: "12 months",
//            color: "Perky Peach - a warm dusty peach",
//            coverage: "N/A",
//            finish: "Natural",
//            notes: ""
//        ),
//        Product(
//            name: "Stay Vulnerable Melting Cream Blush",
//            brand: "Rare Beauty by Selena Gomez",
//            image: "https://www.sephora.com/productimages/sku/s2418663-main-zoom.jpg?imwidth=1224",
//            type: "Blush",
//            dateAdded: "06/02/2022",
//            shelfLife: "12 months",
//            color: "Nearly Neutral - soft neutral pink",
//            coverage: "N/A",
//            finish: "Natural",
//            notes: ""
//        ),
//        Product(
//            name: "Killawatt Freestyle Highlighter",
//            brand: "Fenty Beauty by Rihanna",
//            image: "https://www.sephora.com/productimages/sku/s1925908-main-zoom.jpg?imwidth=612",
//            type: "Highlighter",
//            dateAdded: "05/21/2022",
//            shelfLife: "12 months",
//            color: "Girl Next Door/Chic Phreak - soft pink sheen / supercharged peachy pink shimme",
//            coverage: "N/A",
//            finish: "Shimmer",
//            notes: "Long-wearing highlighter for all skin tones. Cream-powder hybrid."
//        ),
//        Product(
//            name: "Mochi Glow Bouncy Highlighter",
//            brand: "Kaja",
//            image: "https://www.sephora.com/productimages/sku/s2139780-main-zoom.jpg?imwidth=1224",
//            type: "Highlighter",
//            dateAdded: "06/02/2022",
//            shelfLife: "12 months",
//            color: "01 Toy Alien - sparkling white gold",
//            coverage: "N/A",
//            finish: "Radiant",
//            notes: ""
//        ),
////        Product(
////            name: "",
////            brand: "",
////            image: "",
////            type: "Highlighter",
////            dateAdded: "06/02/2022",
////            shelfLife: "12 months",
////            color: "",
////            coverage: "",
////            finish: "",
////            notes: ""
////        ),
////        Product(
////            name: "",
////            brand: "",
////            image: "",
////            type: "Highlighter",
////            dateAdded: "06/02/2022",
////            shelfLife: "12 months",
////            color: "",
////            coverage: "",
////            finish: "",
////            notes: ""
////        ),
//        Product(
//            name: "Dior Addict Lip Maximizer Plumping Gloss",
//            brand: "Dior",
//            image: "https://www.sephora.com/productimages/sku/s2171668-main-zoom.jpg?imwidth=612",
//            type: "Lip product",
//            dateAdded: "05/21/2022",
//            shelfLife: "24 months",
//            color: "012 Rosewood - rosewood glossy",
//            coverage: "N/A",
//            finish: "High Shine",
//            notes: "Formula contains volumizing spheres of hyaluronic acid for powerful hydration and a fuller lip effect."
//        ),
//        Product(
//            name: "Power Move Hydrating Soft Matte Lipstick",
//            brand: "Bite Beauty",
//            image: "https://www.sephora.com/productimages/sku/s2253615-main-zoom.jpg?imwidth=1224",
//            type: "Lip product",
//            dateAdded: "05/21/2022",
//            shelfLife: "24 months",
//            color: "Sugar Buns - pink nude",
//            coverage: "N/A",
//            finish: "Matte",
//            notes: ""
//        ),
////        Product(
////            name: "",
////            brand: "",
////            image: "",
////            type: "Lip product",
////            dateAdded: "05/21/2022",
////            shelfLife: "24 months",
////            color: "",
////            coverage: "",
////            finish: "",
////            notes: ""
////        ),
////        Product(
////            name: "",
////            brand: "",
////            image: "",
////            type: "Lip product",
////            dateAdded: "05/21/2022",
////            shelfLife: "24 months",
////            color: "",
////            coverage: "",
////            finish: "",
////            notes: ""
////        ),
//        Product(
//            name: "Lilly Lashes Lite Faux Mink Lashes",
//            brand: "Lilly Lashes",
//            image: "https://www.sephora.com/productimages/sku/s2373538-main-zoom.jpg?imwidth=612",
//            type: "Lash product",
//            dateAdded: "05/21/2022",
//            shelfLife: "",
//            color: "Miami Lite - round lash style, complimentary to all eye shapes",
//            coverage: "N/A",
//            finish: "N/A",
//            notes: ""
//        ),
//        Product(
//            name: "Lash Idôle Lash-Lifting & Volumizing Mascara",
//            brand: "Lancome",
//            image: "https://www.sephora.com/productimages/sku/s2417145-main-zoom.jpg?imwidth=1224",
//            type: "Lash product",
//            dateAdded: "05/21/2022",
//            shelfLife: "",
//            color: "Black",
//            coverage: "N/A",
//            finish: "N/A",
//            notes: ""
//        ),
////        Product(
////            name: "",
////            brand: "",
////            image: "",
////            type: "Lash product",
////            dateAdded: "05/21/2022",
////            shelfLife: "",
////            color: "",
////            coverage: "",
////            finish: "",
////            notes: ""
////        ),
////        Product(
////            name: "",
////            brand: "",
////            image: "",
////            type: "Lash product",
////            dateAdded: "05/21/2022",
////            shelfLife: "",
////            color: "",
////            coverage: "",
////            finish: "",
////            notes: ""
////        ),
//        Product(
//            name: "Stay All Day Waterproof Liquid Eye Liner",
//            brand: "Stila",
//            image: "https://www.sephora.com/productimages/sku/s1221084-main-zoom.jpg?imwidth=612",
//            type: "Eyeliner",
//            dateAdded: "05/21/2022",
//            shelfLife: "6 months",
//            color: "Intense Black - jet black",
//            coverage: "Full",
//            finish: "Matte",
//            notes: "Thin, marker-like tip"
//        ),
//        Product(
//            name: "24/7 Glide-On Waterproof Eyeliner Pencil",
//            brand: "Urban Decay",
//            image: "https://www.sephora.com/productimages/sku/s1393693-main-zoom.jpg?imwidth=1224",
//            type: "Eyeliner",
//            dateAdded: "05/21/2022",
//            shelfLife: "6 months",
//            color: "Perversion - matte blackest black",
//            coverage: "N/A",
//            finish: "N/A",
//            notes: ""
//        )//,
////        Product(
////            name: "",
////            brand: "",
////            image: "",
////            type: "Eyeliner",
////            dateAdded: "05/21/2022",
////            shelfLife: "6 months",
////            color: "",
////            coverage: "",
////            finish: "",
////            notes: ""
////        ),
////        Product(
////            name: "",
////            brand: "",
////            image: "",
////            type: "Eyeliner",
////            dateAdded: "05/21/2022",
////            shelfLife: "6 months",
////            color: "",
////            coverage: "",
////            finish: "",
////            notes: ""
////        )
    ]
}
