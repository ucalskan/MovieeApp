//
//  MovieDetailModel.swift
//  MovieeApp
//
//  Created by Utku Çalışkan on 25.01.2023.
//

import Foundation

// MARK: - DetailResults
struct DetailResults: Codable {
    let title, year, released: String
    let runtime, genre, director, writer: String
    let actors, plot: String
    let awards: String
    let poster: String
    let imdbRating: String

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case released = "Released"
        case runtime = "Runtime"
        case genre = "Genre"
        case director = "Director"
        case writer = "Writer"
        case actors = "Actors"
        case plot = "Plot"
        case awards = "Awards"
        case poster = "Poster"
        case imdbRating
    
    }
}
