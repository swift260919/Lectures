//
//  CheckoutViewController.swift
//  Lec5Part3
//
//  Created by hackeru on 31/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController {
    
    var pizza: Pizza!
    @IBOutlet weak var summaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        summaryLabel.text = pizza.description
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
