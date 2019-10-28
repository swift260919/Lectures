//
//  ViewController.swift
//  Lec2AskTheOracle
//
//  Created by hackeru on 03/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func askTapped(_ sender: UIButton) {
        let options = ["Yes", "No", "Maybe"]
        
        let ans = options.randomElement() ?? ""
        
        answerLabel.text = ans
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

