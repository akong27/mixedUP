//
//  MixinSelectTableViewController.swift
//  mixedUP
//
//  Created by Nicholas Frawley on 11/21/17.
//  Copyright © 2017 Nicholas Frawley. All rights reserved.
//

import UIKit

class MixinSelectTableViewController: UITableViewController
{
    var parentView: GeneratorViewController?
    var mixinList: [Alcohol] = []
    //var possibleList: [String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //parentView?.possibleList = possibleList

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        if(ThemeChanger.theme == "dark"){
            self.view.backgroundColor = ThemeChanger.backgroundDark
        }
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
        return mixinList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mixinSelectCell", for: indexPath) as! MixinTableViewCell
        print(mixinList[indexPath.row].alcoholName)
        
        //cell.possibleList = self.possibleList
        cell.mixinNameLabel.text = mixinList[indexPath.row].alcoholName
        
        if(parentView?.possibleList.contains(mixinList[indexPath.row].alcoholName))!
        {
            cell.toUsePosition.setOn(true, animated: false)
        }
        else
        {
            cell.toUsePosition.setOn(false, animated: false)
        }
        
        cell.parentView = self

        // Configure the cell...

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
