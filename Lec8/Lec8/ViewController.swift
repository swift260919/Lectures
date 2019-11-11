//
//  ViewController.swift
//  Lec8
//
//  Created by hackeru on 11/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        let animals = AnimalDataSource.shared.getAnimals()
        
        print(animals)
    }
}

