//
//  RoutineModel.swift
//  MakeupRoutine
//

import Foundation

enum Tags: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    
    case day = "Day"
    case night = "Night"
    case everyday = "Everyday"
    case minimal = "Minimal"
    case simple = "Simple"
    case naturalGlam = "Natural Glam"
    case fullGlam = "Full Glam"
    case editorial = "Editorial"
    case shimmery = "Shimmery"
    case bridal = "Bridal"
    
}

struct Routine: Identifiable, Equatable {
    let id = UUID()
    let name: String
    let dateAdded: String
    let routineItems: Set<Product>
    let publish: Bool
    let tags: Set<Tags.RawValue>
}

extension Routine {
    static let all: [Routine] = []
}
