//
//  WebService.swift
//  MovieeApp
//
//  Created by Utku Çalışkan on 25.01.2023.
//

import Alamofire
import UIKit


protocol MovieServiceProtocols {
    func searchMovie(searchMovieName: String, completion: @escaping ([Search]?) -> Void)
    func getMovieDetail(movieImdbId: String, completion: @escaping (DetailResults?) -> Void)
   
    
    //func fethMovies(onSucces: @escaping (Movies) -> (), onError: @escaping (AFError) -> ())
}

final class Services: UIViewController, MovieServiceProtocols {
    
    
    
    
    func makeAlert(titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert,animated: true)
    }
    
    
    
    
    
    
    
    func searchMovie(searchMovieName: String, completion: @escaping ([Search]?) -> Void) {
        AF.request(Constant.NetworkConstant.SearchMovieServiceEndPoint.searchMovie(searchMovieName: searchMovieName)).responseDecodable(of: Result.self) { data in
            guard let data = data.value else {
                completion(nil)
                return
            }
            completion(data.search)
        }
    }
    
    func getMovieDetail(movieImdbId: String, completion: @escaping (DetailResults?) -> Void) {
        AF.request(Constant.NetworkConstant.SearchMovieServiceEndPoint.detailMovie(movieImdbId: movieImdbId)).responseDecodable(of: DetailResults.self) { data in
            guard let data = data.value else {
                completion(nil)
                return
            }
            completion(data)
        }
    }
}

