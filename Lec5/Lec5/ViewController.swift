//
//  ViewController.swift
//  Lec5
//
//  Created by hackeru on 31/10/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var memoryCards: [UIButton]!
    
    //previous card?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initGame()
    }
    
    func initGame(){
        //set the back image on all the cards:
        let b = UIImage(named: "back")
        for btn in memoryCards{
            btn.setImage(b, for: .normal)
        }
        
        var paths = Bundle.main.paths(forResourcesOfType: ".png", inDirectory: nil)
        
        //an empty image array
        var imagesForGame = [UIImage?]()
        
        //3 random images for our game:
        for _ in 0..<3{
            //0 to paths.count
            let rand = Int.random(in: 0..<paths.count)
            let randPath = paths.remove(at: rand)
            
            //optional image -> maybe there is no image under the given path
            let image = UIImage(contentsOfFile: randPath)
            imagesForGame.append(image)
        }
        
        imagesForGame = imagesForGame + imagesForGame // [] = [] + []
        imagesForGame.shuffle()

        //same as the solution above.
        for(image, btn) in zip(imagesForGame, memoryCards){
            btn.setImage(image, for: .highlighted)
        }
    }

    
    @IBAction func cardTapped(_ sender: UIButton) {
        print("Tapped")
        //get the highlighted image
        let img = sender.image(for: .highlighted)
        //set the image for the normal state
        sender.setImage(img, for: .normal)
    }
 }

