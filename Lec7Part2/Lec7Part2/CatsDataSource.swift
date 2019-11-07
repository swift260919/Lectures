//
//  CatsDataSource.swift
//  Lec7Part2
//
//  Created by hackeru on 07/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class CatsDataSource{
    
    //TODO: json
    //mutable array --> remove, insert
    var cats = [
        Cat(name: "Abyssinian", image: UIImage(named: "Abyssinian")),
        Cat(name: "American Short hair", image: UIImage(named: "American_Short_hair")),
        Cat(name: "American Bobtail", image: UIImage(named: "AmericanBobtail")),
        Cat(name: "American Curl", image: UIImage(named: "AmericanCurl")) ,
        Cat(name: "American Wire hair", image: UIImage(named: "AmericanWire_hair")),
        Cat(name: "Bengal", image: UIImage(named: "Bengal")),
        Cat(name: "Birman", image: UIImage(named: "Birman")),
        Cat(name: "Bombay", image: UIImage(named: "Bombay")),
        Cat(name: "BritishShorthair", image: UIImage(named: "BritishShorthair")),
        Cat(name: "Burmese", image: UIImage(named: "Burmese"))
    ]
    
    
    //computed property for length
    //addCat(indexPath)
    //removeCat
    //replace(cat, cat)
}
