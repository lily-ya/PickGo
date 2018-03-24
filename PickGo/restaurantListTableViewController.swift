//
//  restaurantListTableViewController.swift
//  PickGo
//
//  Created by Lily on 3/20/18.
//  Copyright © 2018 Lily. All rights reserved.
//

import UIKit

class restaurantListTableViewController: UITableViewController {

    private var restaurantList:[Restaurant] = []

    private func createDataModel(){
        let r1:Restaurant = Restaurant(name:"El Mercado Restaurant", rating:3, phoneNumber:"(357)123-1111", street:"1 Main Street", city:"Austin", state:"TX", zip:78128)
        let r2:Restaurant = Restaurant(name:"Cabriel's Cafe", rating:4, phoneNumber:"(357)123-2222", street:"2 Main Street", city:"Austin", state:"TX", zip:78228)
        let r3:Restaurant = Restaurant(name:"The Clay Pit", rating:5, phoneNumber:"(357)123-3333", street:"3 Main Street", city:"Austin", state:"TX", zip:78328)
        let r4:Restaurant = Restaurant(name:"The carillon", rating:3, phoneNumber:"(357)123-4444", street:"4 Main Street", city:"Austin", state:"TX", zip:78428)
        let r5:Restaurant = Restaurant(name:"Pizzahut", rating:2, phoneNumber:"(357)123-5555", street:"5 Main Street", city:"Austin", state:"TX", zip:78528)

        restaurantList = [r1, r2, r3, r4, r5]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createDataModel()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "restaurantCell", for: indexPath) as! restaurantTableViewCell
        let i:Int = indexPath.row
        // Configure the cell...
        cell.lblName?.text = restaurantList[i].name
        cell.lblRating?.text = String(restaurantList[i].rating)
        cell.restaurant = restaurantList[i]
        return cell
    }
    

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

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let seg = segue.destination as! restaurantDetailViewController
        if let indexPath = self.tableView.indexPathForSelectedRow{
            seg.restaurant = restaurantList[indexPath.row]
        }
    }

}
