//
//  WatchListApp.swift
//  WatchList
//
//  Created by Weerawut Chaiyasomboon on 24/2/2568 BE.
//

import SwiftUI
import SwiftData

@main
struct WatchListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Movie.self)
        }
    }
}
