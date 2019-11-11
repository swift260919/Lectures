
//
//  AnimalDataSource.swift
//  Lec8
//
//  Created by hackeru on 11/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class AnimalDataSource {
    //singleton:
    static let shared = AnimalDataSource()
    private init(){}
    
    
    func getAnimals()->[Animal]{
 
        guard let url  = Bundle.main.url(forResource: "animals", withExtension: "json"),
              let data  = try? Data(contentsOf: url)
        else{return []}
        
        return (try? JSONDecoder().decode([Animal].self, from: data)) ?? []
    }
}
