//
//  ViewController.swift
//  Lec11
//
//  Created by hackeru on 21/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    
    
    @IBAction func dismiss(_ sender: UIButton) {
        dialogView.removeFromSuperview()
        blurView.isHidden = true
    }
    
    @IBOutlet var dialogView: UIView!
    @IBAction func showCustom(_ sender: UIButton) {
        //1)add the dialogView to self.view
        view.addSubview(dialogView)
        
        blurView.isHidden = false
        //2)position
        dialogView.center = view.center
    }
    
    
    
    
    @IBAction func showSheet(_ sender: UIButton) {
        let alertVC = UIAlertController(title: "Whats up?",
                                        message: "Hi",
                                        preferredStyle: .actionSheet)
        
        alertVC.addAction(.init(title: "Cool", style: .default, handler: { (action) in
            print("Cool")
        }))
        
        alertVC.addAction(.init(title: "Good", style: .destructive, handler: { (action) in
            print("Good")
        }))
        
        alertVC.addAction(.init(title: "OK", style: .cancel, handler: { (action) in
            print("ok")
        }))
        
        present(alertVC, animated: true)
    }
    
    @objc func changed(_ sender: UITextField){
        print(sender.text ?? "")
        guard let alertVC = presentedViewController as? UIAlertController else {return}
        alertVC.actions[0].isEnabled = (sender.text ?? "").count > 2
    }
    
    @IBAction func showAlert(_ sender: UIButton) {
        //1) init an alert vc:
        let alertVC = UIAlertController(title: "Go Go",
                                        message: "to the ocean",
                                        preferredStyle: .alert)
        
        alertVC.addTextField { (textField) in
            //config the textfield:
            textField.placeholder = "Name"
            textField.keyboardType = .alphabet
            textField.autocorrectionType = .no
            textField.autocapitalizationType = .none
            
            //init an imageView from code:
            let image = UIImage(named: "user")
            let imageView = UIImageView(image: image)
            imageView.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
            
            //use the imageView
            textField.rightView = imageView
            //tell the textField to show the right view:
            textField.rightViewMode = .always
        }
        alertVC.textFields?[0].addTarget(self, action: #selector(changed(_:)), for: .editingChanged)
        
        
        //add an action:
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: { (action) in
            print("Ok Tapped")
        })
        okAction.isEnabled = false
        alertVC.addAction(okAction)
        
        alertVC.addAction(.init(title: "Destructive", style: .destructive, handler: { (action) in
            print("Destructive Tapped")
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
