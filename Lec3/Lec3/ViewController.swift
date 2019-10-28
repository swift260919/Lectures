//
//  ViewController.swift
//  Lec3
//
//  Created by hackeru on 07/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        //code that runs when the slider changed
        label.text = "\(Int(sender.value))"
        
        //we cant change the size, we can change the font.
 
        
        
        label.font = label.font.withSize(CGFloat(sender.value))
        
        
        //same in a procedural way:)
//        let fName = label.font.fontName
//        let newFontWithOtherSize = UIFont(name: fName, size: CGFloat(sender.value))
//        label.font = newFontWithOtherSize
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

