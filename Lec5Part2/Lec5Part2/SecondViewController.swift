//
//  SecondViewController.swift
//  Lec5Part2
//
//  Created by hackeru on 31/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var datum: String? = "Not Set"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = datum
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
