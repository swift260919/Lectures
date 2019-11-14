//
//  TMDBDataSource.swift
//  Lec9
//  retrofit
//  Created by hackeru on 14/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class TMDBDataSource{

    let endPoint: EndPoint
    var params: [String: Any] //ex: ["sort_by":"popularity.desc"]
    
    init(endPoint: EndPoint, params: [String: Any] = [:]){
        self.endPoint = endPoint
        self.params = params
    }
    
    //loosly coupled code
    func sendRequest(listener: TMDBListener){
        let defaultParams = endPoint.defaultParams.map{"\($0)=\($1)"}.joined(separator: "&")
        let otherParams = params.map{"\($0)=\($1)"}.joined(separator: "&")
        let address = endPoint.path + "?" + defaultParams + "&" + otherParams
        let url = URL(string: address)!
        print(url)
        //tasks start at a suspended state - we need to remember to .resume() them.
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            //code that runs in the backround
            if let err = err{
                print(err)
            }
            
            if let data = data{
                let movies = try? JSONDecoder().decode(MovieResponse.self, from: data)
                DispatchQueue.main.async {
                    //code that runs on the ui thread.
                     listener.displayMovies(movies?.results ?? [])
                }
            }
        }.resume()
    }
     
    enum EndPoint{
        case discoverMovies
        case discoverTV
        
        //computed property for the url:
        var path:String{
            switch self {
            case .discoverMovies:
                return base + "/discover/movie"
            case .discoverTV:
                return base + "/discover/tv"
            }
        }
        
        var defaultParams:[String: Any]{
            return ["api_key":"e898f9a386bfdb67610421b879360e02"]
        }
        //computed property: (THE ONLY PROPERTY THAT ENUMS MAY HAVE)
        private var base: String {
            return "https://api.themoviedb.org/3"
        }
    }
}


protocol TMDBListener {
    //the movies are here
    func displayMovies(_ movies: [Movie])
}

