//
//  ViewController.swift
//  Lec9
//
//  Created by hackeru on 14/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
// 
import UIKit

class ViewController: UIViewController ,TMDBListener {
    //1) don't use the UI Thread for Netwroking
    //2) other threads must not update the UI
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        let ds = TMDBDataSource(endPoint: .discoverTV, params: ["sort_by": "popularity_desc"])
 
        
        
        ds.sendRequest(listener: self)
    }

    
    func displayMovies(_ movies: [Movie]){
        print(movies)
    }

}

