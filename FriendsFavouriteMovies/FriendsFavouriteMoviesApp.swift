//
//  FriendsFavouriteMoviesApp.swift
//  FriendsFavouriteMovies
//
//  Created by Guyo Godana on 28/09/2026.
//

import SwiftUI
import SwiftData

@main
struct FriendsFavouriteMoviesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Movie.self, Friend.self])
    }
}
