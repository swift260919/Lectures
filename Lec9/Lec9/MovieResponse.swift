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



//may move to another file
struct Movie:Codable {
    let name:String?
    let poster_path: String?
}
