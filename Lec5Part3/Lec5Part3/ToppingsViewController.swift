//
//  ToppingsViewController.swift
//  Lec5Part3
//
//  Created by hackeru on 31/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit
//enum PizzaSize (large, small, medium)
//enum Topping
//Pizza: size, []
class ToppingsViewController: UIViewController {
    
    @IBAction func toppingTapped(_ sender: UIButton) {
        sender.alpha =  sender.alpha == 0.5 ? 1 : 0.5
        //tag = 1 cheese, tag = 2, olives, tag = 3 ,onions
        switch sender.tag {
        case 1:
            if(!pizza.toppings.contains(.cheese)){
                pizza.toppings.insert(.cheese)
            }else{
                pizza.toppings.remove(.cheese)
            }
        case 2:
            if(!pizza.toppings.contains(.olives)){
                pizza.toppings.insert(.olives)
            }else{
                pizza.toppings.remove(.olives)
            }
        case 3:
            if(!pizza.toppings.contains(.onions)){
                pizza.toppings.insert(.onions)
            }else{
                pizza.toppings.remove(.onions)
            }
        default:
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dest = segue.destination as? CheckoutViewController else{ return}
        //pass the pizza to the next screen
        dest.pizza = pizza
    }
    
    //var datum: String?
    var pizza:Pizza!//explicitly unwrapped optional  = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(pizza.size)
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
