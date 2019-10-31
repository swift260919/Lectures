//
//  PizzaSize.swift
//  Lec5Part3
//
//  Created by hackeru on 31/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

struct Pizza: CustomStringConvertible {
    //properties:
    let size: Size
    var toppings: Set<Topping>
    
    var description: String{
        return "Size: \(size), toppings: \(toppings)"
    }
    
    //init(size, toppings)
    
    enum  Size:Int, CustomStringConvertible {
        case small = 5
        case medium = 10
        case large = 20
        
        var description: String{
            switch self {
            case .large:
                return "Large"
            case .medium:
                return "Medium"
            case .small:
                return "Small"
            }
        }
    }
    //topping is meaningless without a Pizza
    enum Topping:CustomStringConvertible{
        case olives, onions ,cheese
        
        var description: String{
            switch self {
            case .cheese:
                return "Cheese"
            case .olives:
                return "Olives"
            case .onions:
                return "Onions"
            }
        }
    }
}
 
//
//let t = Pizza.Topping.Cheese
