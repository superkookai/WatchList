//
//  Genre.swift
//  WatchList
//
//  Created by Weerawut Chaiyasomboon on 24/2/2568 BE.
//

import Foundation

enum Genre: Int, Codable, CaseIterable, Identifiable {
    var id: Int { rawValue }
    
    case action = 1
    case comedy = 2
    case crime = 3
    case documentary = 4
    case drama = 5
    case fantasy = 6
    case kids = 7
    case musical = 8
    case scifi = 9
    case romance = 10
    case thriller = 11
    case western = 12
}

extension Genre {
    var name: String {
        switch self {
        case .action:
            "Action"
        case .comedy:
            "Comedy"
        case .crime:
            "Crime"
        case .documentary:
            "Documetary"
        case .drama:
            "Drame"
        case .fantasy:
            "Fantasy"
        case .kids:
            "Kids"
        case .musical:
            "Musical"
        case .scifi:
            "SciFi"
        case .romance:
            "Romance"
        case .thriller:
            "Thriller"
        case .western:
            "Western"
        }
    }
}
