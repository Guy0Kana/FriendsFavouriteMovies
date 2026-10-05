//
//  ContentView.swift
//  FriendsFavouriteMovies
//
//  Created by Guyo Godana on 28/09/2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.3.fill") {
                FriendList()
            }
            
            Tab("Movies", systemImage: "film.stack") {
                FilteredMovieList()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
