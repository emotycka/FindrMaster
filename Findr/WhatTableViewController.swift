//
//  WhatTableViewController.swift
//  Findr
//
//  Created by Eli Motycka on 6/9/15.
//  Copyright (c) 2015 Findr Team. All rights reserved.
//

import UIKit

var final : FinalPost = FinalPost()

class WhatTableViewController: UITableViewController, UISearchBarDelegate, UISearchDisplayDelegate, UITableViewDataSource, UITableViewDelegate {
    
    var lostitems = [LostItems]()
    var filteredItems = [LostItems]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.lostitems = [LostItems(category:"Keys", name:"House Keys"),
            LostItems(category:"Keys", name:"Car Keys"),
            LostItems(category:"Identification", name:"State ID"),
            LostItems(category:"Identification", name:"School ID"),
            LostItems(category:"Phone", name:"iPhone"),
            LostItems(category:"Phone", name:"Android"),
            LostItems(category:"Electronics", name:"Laptop"),
            LostItems(category:"Wallet", name:"Wallet"),
            LostItems(category:"Clothing", name:"Jacket")]
        
        // Reload the table
        self.tableView.reloadData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
//    func swipeLeft(recognizer : UISwipeGestureRecognizer) {
//        self.performSegueWithIdentifier("goto_where", sender: self)
//    }
//    
//    func swipeRight(recognizer : UISwipeGestureRecognizer) {
//        self.performSegueWithIdentifier("goto_where", sender: self)
//    }
    
    
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if let identifier = segue.identifier {
//            var viewController = segue.destinationViewController as WhereViewController
//            if identifier == "goto_where" {
//                finalPost.setItem(tableView.didSel
//            }
//        }
//        // Get the new view controller using [segue destinationViewController].
//        // Pass the selected object to the new view controller.
//    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return self.lostitems.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        let item = lostitems[indexPath.row]
        
        // Configure the cell
        cell.textLabel!.text = item.name
        cell.accessoryType = UITableViewCellAccessoryType.Checkmark
        
        return cell
    }
    
//    func tableView(tableView: UITableView!, didSelectRowatIndexPath indexPath: NSIndexPath!) {
//        println("hi" #\(indexPath.row)!")
//        
//        let indexPath = tableView.indexPathForSelectedRow()
//        let currentCell = tableView.cellForRowAtIndexPath(indexPath!) as UITableViewCell!
//        
//        
//    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("You selected cell #\(indexPath.row)!")
        
        // Get Cell Label
//        let indexPath = tableView.indexPathForSelectedRow();
        let currentCell = tableView.cellForRowAtIndexPath(indexPath) as UITableViewCell!;
//        let cellString = "\(currentCell)"
        //finalPost.itemName = cellString
        
//        final0.itemName = lostitems[indexPath.row].name
//        
        final.itemName = lostitems[indexPath.row].name
        
        performSegueWithIdentifier("goto_where", sender: currentCell)
        
////
//        let storyboard = UIStoryboard(name: "FinalPostStoryboard", bundle: nil)
//        var viewController = storyboard.instantiateViewControllerWithIdentifier("FinalPostVC") as! FinalPostVC!
//        viewController.itemName = cellString
//        self.presentViewController(viewContoller, animated: true , completion: nil)
    }
    
//    func tableViewSelectionDidChange(aNotification: NSNotification) {
//        finalPost.setItem(selectedCell.description)
//    }
//    
    
  
    
    
    
    
    
    
    //filters lostItems array based on searchText
   // func filterContentForSearchText(searchText: String) {
        // Filter the array using the filter method
      //  self.filteredItems = self.lostitems.filter({( item: LostItems) -> Bool in
           // let categoryMatch = (scope == "All") || (item.category == scope)
           // let stringMatch = item.name.rangeOfString(searchText)
           // return categoryMatch && (stringMatch != nil)
        //})
  //  }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    
    */

}
