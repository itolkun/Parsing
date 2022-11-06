//
//  Parse.swift
//  Parsing
//
//  Created by Айтолкун Анарбекова on 6/11/22.
//

import Foundation

struct Film: Decodable {
    let Title: String
    let Year: String
    let imdbID: String
    let `Type`: String
    let Poster: String
}

struct SearchResult: Decodable {
    let Search: [Film]
    let totalResults: String
    let Response: String
    
}
