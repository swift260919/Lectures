//
//  ViewController.swift
//  Lec11Part2
//
//  Created by hackeru on 21/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //weak var x = UIButton() //ref count = 0

    //WeakReference<Context>
    //VC -> Button
    //Button -> VC
    //Retain cycle
    
    @IBAction func showModal(_ sender: UIButton) {
        let sb = UIStoryboard(name: "ModalDialog", bundle: nil)
        guard let modalVC = sb.instantiateInitialViewController() else {return}
        
        modalVC.modalPresentationStyle = .overCurrentContext
        
        present(modalVC, animated: true)
        
    }
    
    
    
    @IBOutlet weak var height: NSLayoutConstraint!
    
    @IBAction func dismissDialog(_ sender: UIButton) {
         height.constant = 0
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 15, options: [], animations: {
                   
                   self.view.layoutIfNeeded()
                   
            }, completion: nil)
    }
    
    
    @IBAction func showDialog(_ sender: UIButton) {
        
        sender.layer.cornerRadius = 10
        sender.backgroundColor = UIColor.black
        sender.tintColor = .white
        height.constant = height.constant == 200 ? 0 : 200
        
//        UIView.animate(withDuration: 0.5, delay: 0, options: [.curveEaseInOut], animations: {
//            //
//        })
        
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 15, options: [], animations: {
            //we want the changes to be animated
            self.view.layoutIfNeeded()
            
        }, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
 
    }


}

//VC->dialog

