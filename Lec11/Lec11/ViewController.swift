//
//  ViewController.swift
//  Lec11
//
//  Created by hackeru on 21/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showAlert(_ sender: UIButton) {
        //1) init an alert vc:
        let alertVC = UIAlertController(title: "Go Go",
                                        message: "to the ocean",
                                        preferredStyle: .alert)
        
        
        
        
        //add an action:
        alertVC.addAction(.init(title: "Ok", style: .default, handler: { (action) in
            print("Ok Tapped")
        }))
        
        
        
        //2) present it:
        present(alertVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    
    
}

func howToAccessAppDelegate(){
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
    
    let mood = appDelegate.mood
}

enum Mood: Int {
    case Happy = 1
    case Cool
    case Awsome
    
}
