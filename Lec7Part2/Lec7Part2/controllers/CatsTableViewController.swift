//
//  CatsTableViewController.swift
//  Lec7Part2
//
//  Created by hackeru on 07/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class CatsTableViewController: UITableViewController {
    var ds = CatsDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.navigationItem.rightBarButtonItem = editButtonItem
        
        //how to add barButton items from code
        //        navigationItem.leftBarButtonItem =
        //            UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(tappedCamera(_:)))
    }
    
    
    @objc func tappedCamera(_ sender: UIBarButtonItem){
        print("Camera")
    }
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return ds.animals.count
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ds.animals[section].count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catcell", for: indexPath)
        
        
        let animal = ds.animals[indexPath.section][indexPath.row]
        // Configure the cell...
        cell.imageView?.image = animal.image
        cell.textLabel?.text = animal.name
        
        cell.detailTextLabel?.isHidden = true
        
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let titles = ["Cats" ,"Dogs"]
        return titles[section]
    }
    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            ds.animals[indexPath.section].remove(at: indexPath.row)
            
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    
    
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        
        let from = ds.animals[fromIndexPath.section][fromIndexPath.row]
        //remove from
        ds.animals[fromIndexPath.section].remove(at: fromIndexPath.row)
        
        //put from in place
        ds.animals[to.section].insert(from, at: to.row)
    }
    
    
    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
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
