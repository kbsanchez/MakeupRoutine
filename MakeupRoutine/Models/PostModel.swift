//
//  PostModel.swift
//  MakeupRoutine
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    let title: String
    let timestamp: TimeInterval
    let imageURL: URL?
    let text: String
}
