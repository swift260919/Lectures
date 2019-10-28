//
//  ViewController.swift
//  Lec4Part2
//
//  Created by hackeru on 28/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var rgbLabel: UILabel!
    @IBOutlet weak var hexLabel: UILabel!
 
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let red = Int(redSlider.value)
        let green = Int(greenSlider.value)
        let blue = Int(blueSlider.value)
        
        redLabel.text = "\(red)"
        greenLabel.text = "\(green)"
        blueLabel.text = "\(blue)"
        
        rgbLabel.text = "rgb(\(red), \(green), \(blue))"
        
        
        let r = CGFloat(red) / 255
        let g = CGFloat(green) / 255
        let b = CGFloat(blue) / 255
        
        colorLabel.backgroundColor = UIColor( red: r, green: g, blue: b, alpha: 1)
 
        let rHex = String(red, radix: 16) //3c
        let gHex = String(green, radix: 16)
        let bHex = String(blue, radix: 16)
        
        hexLabel.text = "#" + rHex + gHex + bHex
    }
    
    //actions:
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

