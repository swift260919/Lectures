//
//  ViewController.swift
//  Lec9
//
//  Created by hackeru on 14/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
// 
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let ds = TMDBDataSource(endPoint: .discoverMovies, params: ["sort_by": "popularity_desc"])
        
        
        ds.sendRequest()
    }


}

