//
//  ViewController.swift
//  Lec7
//
//  Created by hackeru on 07/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //Todo: get this from the internet (json)
    let arr = VegDataSource().vegtables //[Vegtable]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
    }
 
    //perform->prepare
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vegtable = sender as? Vegtable,
              let dest = segue.destination as? DetailsViewController
            else {return}
        
        dest.vegtable  = vegtable
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vegtable = arr[indexPath.row]
        
        //deque the cell using the id. now we need to cast it to it's concrete type.
        let cell = tableView.dequeueReusableCell(withIdentifier: "vegcell", for: indexPath) as! VegCellTableViewCell
        
        //data binding:
        cell.vegImageView.image = vegtable.image
        cell.vegLabel.text = vegtable.name
        
        return cell
    }
}


extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //get the veg:
        let vegtable = arr[indexPath.row]
        
        //perform the segue:
        performSegue(withIdentifier: "showDetail", sender: vegtable)
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        //self.view.frame.height
        return 150
    }
}

