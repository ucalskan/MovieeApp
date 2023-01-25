//
//  NetworkConstants.swift
//  MovieeApp
//
//  Created by Utku Çalışkan on 25.01.2023.
//

//https://api.themoviedb.org/3/discover/movie?api_key=0807404709bdd208ef9e8d8240631f0d
//https://api.themoviedb.org/3/search/movie?api_key=0807404709bdd208ef9e8d8240631f0d&query=Jack+Reacher
//https://api.themoviedb.org/3/search/movie?api_key=0807404709bdd208ef9e8d8240631f0d&query=van+helsing


//http://www.omdbapi.com/?i=tt3896198&apikey=6ed536c4

import Foundation

extension Constant {
    class NetworkConstant{
        enum SearchMovieServiceEndPoint: String {
            case BASE_URL = "https://www.omdbapi.com/"
            case API_KEY = "apikey=6ed536c4"
            
            static func searchMovie(searchMovieName: String) -> String {
                "\(BASE_URL.rawValue)?s=\(searchMovieName)&\(API_KEY.rawValue)"
            }
            
            static func detailMovie(movieImdbId: String) -> String {
                "\(BASE_URL.rawValue)?i=\(movieImdbId)&\(API_KEY.rawValue)"
            }
        }
    }
}

