//
//  Movie.swift
//  Flix
//
//  Created by Jangey Lu on 9/29/18.
//  Copyright © 2018 Jangey Lu. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var posterUrl: URL?
    
    var release_date: String
    var overview: String
    var backdropPath: String
    var posterPath: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        
        // Set the rest of the properties
        release_date = dictionary["release_date"] as? String ?? "No release_date"
        overview = dictionary["overview"] as? String ?? "No overview"
        backdropPath = dictionary["backdrop_path"] as? String ?? "No backdropPath"
        posterPath = dictionary["poster_path"] as? String ?? "No posterPath"
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
}
