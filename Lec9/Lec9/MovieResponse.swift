//
//  MovieResponse.swift
//  Lec9
//
//  Created by hackeru on 14/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

struct MovieResponse:Codable {
    let results:[Movie]
}

//LRU

//may move to another file
struct Movie:Codable {
    let title:String
    let poster_path: String
    
    var poster:String{
        return "https://image.tmdb.org/t/p/original\(poster_path)"
    }
    
    init(from decoder:Decoder) throws{
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        title = try values.decode(String.self, forKey: .title)
        poster_path = try values.decodeIfPresent(String.self, forKey: .poster_path) ?? ""
    }
}
