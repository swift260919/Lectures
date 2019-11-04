//
//  ViewController.swift
//  Lec6Part3
//
//  Created by hackeru on 04/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var slotMachine: UIPickerView!
    var images:[UIImage?] = []
    
    @IBAction func spin(_ sender: UIButton) {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slotMachine.isUserInteractionEnabled = false
        
        for i in 0...9{
            images.append(UIImage(named: String(i)))
        }
    }
}


extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10000
    }
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let iv = UIImageView(image: images[row % images.count])
        
        return iv
    }
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
}
