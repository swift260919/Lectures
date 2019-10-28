//
//  ViewController.swift
//  Lec4Part3
//
//  Created by hackeru on 28/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var cards: [UIButton]!
    var images = [
        UIImage(named: "icons8-cat"),
        UIImage(named: "icons8-dog"),
        UIImage(named: "icons8-year_of_monkey"),
        UIImage(named: "icons8-lion"),
        UIImage(named: "icons8-puffin_bird"),
        UIImage(named: "icons8-cow")
    ]
    
    
    var gameImages: [UIImage?] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startGame()
    }
    
    func startGame(){
        //task - choose 6 images from the images array and fill the game Images array
        images.shuffle()
        //todo : take only 6 first images
        gameImages = images + images
        gameImages.shuffle()
        print()
        
        for i in 0..<cards.count{
            let btn = cards[i]
            
            btn.setImage(gameImages[i], for: UIControl.State.highlighted)
        }
    }
    
    
}

