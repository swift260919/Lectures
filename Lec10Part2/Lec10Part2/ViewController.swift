//
//  ViewController.swift
//  Lec10Part2
//
//  Created by hackeru on 18/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //present a modal from code:
    @IBAction func user(_ sender: UIBarButtonItem) {
        //present user VC modally:
        
        //0) get a ref to the story board
        //we have storyboard
        //1) init the VC (story board + id)
        guard let vc = storyboard?.instantiateViewController(identifier: "user")  else {return}
        //may pass data:
        //vc.data = ""
        //2) present(vc)
        present(vc, animated: true) //to undo - dismiss from targer
        
        //same as what show segue does for you
        //self.navigationController?.pushViewController(vc, animated: true) //to undo - navigationController?.popViewController(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

