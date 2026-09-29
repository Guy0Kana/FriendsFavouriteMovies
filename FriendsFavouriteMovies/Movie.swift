//
//  Movie.swift
//  FriendsFavouriteMovies
//
//  Created by Guyo Godana on 28/09/2026.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date){
        self.title = title
        self.releaseDate = releaseDate
    }
    
    static let sampleData = [
        Movie(title: "Annihilation", releaseDate: .from(year: 2018, month: 2, day: 23)),
        Movie(title: "Obsession", releaseDate: .from(year: 2026, month: 5, day: 15)),
        Movie(title: "Brother Bear", releaseDate: .from(year: 2003, month: 11, day: 1)),
        Movie(title: "Legally Blonde", releaseDate: .from(year: 2001, month: 7, day: 13)),
        Movie(title: "Rafiki", releaseDate: .from(year: 2018, month: 5, day: 9))
    ]
}

extension Date {
    static func from(year: Int, month: Int, day: Int) -> Date {
        let components = DateComponents(year: year, month: month, day: day)
        return Calendar.current.date(from: components) ?? Date()
    }
}
