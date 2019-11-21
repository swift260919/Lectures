//
//  ModalDialogViewController.swift
//  Lec11Part2
//
//  Created by hackeru on 21/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ModalDialogViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //about screen: clouds moving.
        //rain
        
        //navigation drawer: inner view
        
        //modal: Login -> Appdelgate
        
        
        //TODO: animate in view did appear
        //factory method - to present
        //showModal(vc, completion)
        //delegate
        
        //swipe to dismiss
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swiped(_:)))
        
        swipe.direction = .down
        
        view.addGestureRecognizer(swipe)
    }
    
    @objc func swiped(_ sender: UISwipeGestureRecognizer){
        //print("Swiped down")
        dismiss(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
