//
//  ViewController.swift
//  Lec6
//
//  Created by hackeru on 04/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var first: UITextField!
    @IBOutlet weak var second: UITextField!
    @IBOutlet weak var final: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //et.addTextWatcher(this)
//        first.delegate = self
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
         //print(sender.text!)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        //tell all the textFields to resign
        //hideKeyboard(view: view)
        view.endEditing(true)
    }
}


//protocol extension

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let text = textField.text!
        
        //wanted
        let allowedCharacters = CharacterSet(charactersIn: "0123456789")
        //given
        let userSet = CharacterSet(charactersIn: string)
        
        //print("Replacement:  \(string)" )
        return allowedCharacters.isSuperset(of: userSet) && text.count < 3 || string.isEmpty
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}



extension UIViewController{
    func hideKeyboard(view:UIView){
        for child in view.subviews{
            if child is UITextField{
                child.resignFirstResponder() //view.resignFirstResponder
            }else{
                hideKeyboard(view: child)
            }
        }
    }
}


//add something to an existing class

//add something to the String type
extension String{
    //computed property:
    var addition: String{
        return "🤪💩"
    }
}





//extensions allow us:
//convenience init
//methods
//computed properties

extension UIColor{
    convenience init(r: Int, g:Int, b: Int){
        let red = CGFloat(r) / 255
        let green = CGFloat(g) / 255
        let blue = CGFloat(b) / 255
        
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}









let c = UIColor(r: 100, g: 128, b: 255)

















