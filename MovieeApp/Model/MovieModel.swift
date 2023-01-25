//
//  MovieModel.swift
//  MovieeApp
//
//  Created by Utku Çalışkan on 25.01.2023.
//

import Foundation

struct Result: Codable {
    let search: [Search]
    
    enum CodingKeys: String, CodingKey {
        case search = "Search"
    }
}

// MARK: - Search
struct Search: Codable {
    let title, year, imdbID: String
    let poster: String

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case poster = "Poster"
    }
}
