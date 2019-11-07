//
//  ViewController.swift
//  Lec6Part4
//
//  Created by hackeru on 04/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func datePicked(_ sender: UIDatePicker) {
        let date:Date = sender.date
        
        //hour, month ,year
        let c = Calendar(identifier: .gregorian)
        
        
        let year = c.component(.year, from: date)
        let month = c.component(.month, from: date)
        let day = c.component(.day, from: date)
        
        let hour = c.component(.hour, from: date)
        let min = c.component(.minute, from: date)
        
        print(year, month, day, hour, min)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func dateFormatter(){
        let picker = UIPickerView()
        let r = picker.selectedRow(inComponent: 0)
        
        //arr[0][r]
        
        let formatter = DateFormatter()
        //https://nsdateformatter.com/
        formatter.dateFormat = "dd/MM/yyyy"
        
        //String from date
        let dString = formatter.string(from: Date())
        print(dString)
        
        
        //Date from String:
        let str = "02/08/2010"
        if let d = formatter.date(from: str){
            print(d)
        }
    }
    
    func dateFromComponents(){
        //for iterations etc.
        var components = DateComponents()
        components.year = 2019
        components.month = 11
        components.day = 12
        
        if let d = Calendar(identifier: .gregorian).date(from: components){
            print(d)
        }
    }

}


//typealias CDrop =  UICollectionViewDropPlaceholderContext

//
//
//struct AA {
//    //
//    var x: TimeInterval
//}
