//
//  ViewController.swift
//  Lec10
//
//  Created by hackeru on 18/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    //segues can not be performed in view did load.
    
    func showStoryBoard(){
        let sb = UIStoryboard(name: "Welcome", bundle: Bundle.main)
        let nav = sb.instantiateViewController(identifier: "welcomenav")
        
        //present the nav modally:
        present(nav, animated: true)
        
    }
    
    //the view is presented - we may perform segues
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        if let name = UserDefaults.standard.string(forKey: "uName"){
            //if we have a user:
            //greet
            welcomeLabel.text = "Welcome back, \(name)"
        }else{
            //else
            //go to welcome screen
            performSegue(withIdentifier: "show", sender: nil)
        }
    }
}











/*
 func userDefaultsBasics(){
 // Do any additional setup after loading the view.
 //Local Storage - Persistance
 //user defaults:
 let defaults = UserDefaults.standard
 //save value for key:
 defaults.set("Moshe", forKey: "Name")
 defaults.set(22, forKey: "Age") //Int double and float
 defaults.set(true, forKey: "Loves Swift")
 defaults.set(Date(), forKey: "Last Seen")
 
 //we can save arrays:
 let arr = ["Java", "Kotlin", "JS", "TS", "Swift"]
 defaults.set(arr, forKey: "Languages")
 
 //we can also save dictionaries:
 let dict = ["Name":"Dave", "Country": "IL"]
 defaults.set(dict, forKey: "savedDict")
 
 
 
 //fetching:
 
 let name = defaults.string(forKey: "Name")
 let fetchedArray = defaults.stringArray(forKey: "Languages")
 }
 */
