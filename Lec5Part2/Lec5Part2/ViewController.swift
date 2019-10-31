//
//  ViewController.swift
//  Lec5Part2
//
//  Created by hackeru on 31/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    //prepare for segue:
    //1) *let dest) get a ref to the secondViewController
    //2) get the text from the textField
    //3) dest.datum = text (from step 2)

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //safe cast - > ** optional, we need to test if it worked.
        if let dest = segue.destination as? SecondViewController{
            dest.datum = nameTextField.text
        }
        //force cast ** may crash
      //  let dest2:SecondViewController = segue.destination as! SecondViewController
    }
}

