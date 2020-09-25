//
//  Projects.swift
//  ReWant
//
//  Created by Alireza Hajebrahimi on 2020/09/25.
//

import Foundation

// MARK: - Project
struct Project: Identifiable {
    let id: Int
    let title, publishedAt: String
    let supportCount, pageView, candidateCount: Int
    let location, locationSuffix, projectDescription, lookingFor: String
    let image: Dictionary<String, Any>
    let useWebview: Bool
    let company: Dictionary<String, Any>
    let staffingsCount: Int
    let staffings: [Dictionary<String, Any>]
    let leader: Dictionary<String, Any>
    let videoAvailable: Bool
//    let categoryImages, tags: [String]
    let categoryMessage: String
    let canSupport, supported, canApply, applied: Bool
    let canBookmark: Bool

}
