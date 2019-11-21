//
//  UserViewController.swift
//  Lec10Part2
//
//  Created by hackeru on 18/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var moodSegemnted: UISegmentedControl!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        let imagePickerVC = UIImagePickerController()
        imagePickerVC.delegate = self //extension: conform to protocols
        present(imagePickerVC, animated: true)
    }
    
    @IBAction func homeTapped(_ sender: UIButton) {
        let name = firstNameTextField.text ?? ""
        let last = lastNameTextField.text ?? ""
        let index = moodSegemnted.selectedSegmentIndex //0
        
        if let imageData = imageView.image?.pngData(){
            UserDefaults.standard.set(imageData, forKey: "image")
        }
        
        //let moodTitle = moodSegemnted.titleForSegment(at: index) ?? ""
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(last, forKey: "last")
        UserDefaults.standard.set(index, forKey: "index")
        
        
        
        dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFromDefaults()
    }
    
    func loadFromDefaults(){
        let defaults = UserDefaults.standard
        
        guard let name = defaults.string(forKey: "name"),
              let last = defaults.string(forKey: "last")
            else{return}
        
        let index = defaults.integer(forKey: "index")
        
        firstNameTextField.text = name
        lastNameTextField.text = last
        moodSegemnted.selectedSegmentIndex = index
        
        if let imageData = defaults.data(forKey: "image"){
            let image = UIImage(data: imageData)
            imageView.image = image
        }
        
        //let btn = UIButton()
        //btn.layer.cornerRadius = 10
    }
}


extension UserViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //cancled
        print("Cancled")
        picker.dismiss(animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        //[] print("Info", info)
 
        picker.dismiss(animated: true)
        
        
        guard let image = info[.originalImage] as? UIImage else {return}
        imageView.image = image
    }
}
