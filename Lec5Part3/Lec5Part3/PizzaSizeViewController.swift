//
//  PizzaSizeViewController
//  Lec5Part3
//
//  Created by hackeru on 31/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class PizzaSizeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //performSegue(withIdentifier: "login", sender: nil)
        
        guard let dest = segue.destination as? ToppingsViewController,
            let id = segue.identifier else {
            return
        }
        
        switch id {
        case "s":
            dest.pizza = Pizza(size: .small, toppings: [])
        case "m":
             dest.pizza = Pizza(size: .medium, toppings: [])
        case "l":
             dest.pizza = Pizza(size: .large, toppings: [])
        default:
            fatalError("No Such pizza!") //crash please
        }
    }
}

