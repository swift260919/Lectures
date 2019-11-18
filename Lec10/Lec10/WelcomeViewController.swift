//
//  WelcomeViewController.swift
//  Lec10
//
//  Created by hackeru on 18/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func doneTapped(_ sender: UIButton) {
        if let name = nameTextField.text{
            UserDefaults.standard.set(name, forKey: "uName")
            
            self.dismiss(animated: true)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
