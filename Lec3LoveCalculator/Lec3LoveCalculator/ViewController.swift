//
//  ViewController.swift
//  Lec3LoveCalculator
//
//  Created by hackeru on 07/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var second: UITextField!
    @IBOutlet weak var score: UILabel!
    
    @IBAction func calcualte(_ sender: UIButton) {
        let name1 = first.text?.lowercased() ?? ""
        let name2 = second.text?.lowercased() ?? ""
        
        let love = unicode(name: name1) + unicode(name: name2)
        
        //6 % 5 = 1
        //5 % 5 = 0
        //4%5 = 4
        //3%5 = 3
        //2%5 = 2
        //1%5 = 1
        //0%5 = 0
        
        score.text = String(love % 101)
    }
    
    func unicode(name: String) -> Int{
        var score = 0
        
        for c in name.unicodeScalars{
            score += Int(c.value)
        }
        return score
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

