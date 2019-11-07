//
//  CatsTableViewController.swift
//  Lec7Part2
//
//  Created by hackeru on 07/11/2019.
//  Copyright © 2019 hackeru. All rights reserved.
//

import UIKit

class CatsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

let cats = [
    Cat(name: "Abyssinian", image: UIImage(named: "Abyssinian")),
    Cat(name: "American Short hair", image: UIImage(named: "American_Short_hair")),
    Cat(name: "American Bobtail", image: UIImage(named: "AmericanBobtail")),
    Cat(name: "American Curl", image: UIImage(named: "AmericanCurl")) ,
    Cat(name: "American Wire hair", image: UIImage(named: "AmericanWire_hair")),
    Cat(name: "Bengal", image: UIImage(named: "Bengal")),
    Cat(name: "Birman", image: UIImage(named: "Birman")),
    Cat(name: "Bombay", image: UIImage(named: "Bombay")),
    Cat(name: "BritishShorthair", image: UIImage(named: "BritishShorthair")),
    Cat(name: "Burmese", image: UIImage(named: "Burmese"))
]

struct Cat {
    let name: String
    let image: UIImage?
}
