//
//  ViewController.swift
//  Lec7
//
//  Created by hackeru on 07/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Todo: get this from the internet (json)
    let arr = VegDataSource().vegtables //[Vegtable]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}



extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        //get a vegtable from the array:
        let veg = arr[indexPath.row]
        
        //cell identifier from IB
        let cell = tableView.dequeueReusableCell(withIdentifier: "vegcell", for: indexPath)
        
        //set the imageview.image = veg.image
        cell.imageView?.image = veg.image
        
        //title label:
        cell.textLabel?.text = veg.name
        
        //detail label:
        cell.detailTextLabel?.text = veg.color
        
        return cell
    }

}


