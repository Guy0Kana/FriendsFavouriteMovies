//
//  Friend.swift
//  FriendsFavouriteMovies
//
//  Created by Guyo Godana on 28/09/2026.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    static let sampleData = [
        Friend(name: "Guyo"),
        Friend(name: "Kana"),
        Friend(name: "Godana"),
        Friend(name: "Kule"),
        Friend(name: "Diramu"),
    ]
}
