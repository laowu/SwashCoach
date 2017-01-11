//
//  DZZSexSelectingTableViewController.swift
//  Swash
//
//  Created by 白大卫 on 16/12/7.
//  Copyright © 2016年 bdw. All rights reserved.
//

import UIKit

class DZZSexSelectingTableViewController: UITableViewController {

    
    var user:User?
    
    let sexArr:[String] = ["Male", "Female", "Unknoooonw"]
    
    
    @IBOutlet weak var lableName:UILabel?
    
    
    var selectedSex:String?{
        didSet{
            if let sex = selectedSex{
                selectedIndex = sexArr.index(of: sex)!
            }
        }
    }
    var selectedIndex:Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return sexArr.count
    }

    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sexSelectingCell", for: indexPath)as!DZZSexSelectingTableViewCell
        cell.textLabel?.text = sexArr[indexPath.row]
     // Configure the cell...
//        if indexPath.row == selectedIndex{
//            cell.accessoryType = .Checkmark
//        }else
//        {
//            cell.accessoryType = .None
//        }
        
//        cell.selectedBackgroundView = UIView()
//        cell.selectedBackgroundView?.backgroundColor =
//            UIColor(red: 135/255, green: 191/255, blue: 49/255, alpha: 1)

        cell.selectionStyle = UITableViewCellSelectionStyle.gray
        return cell
     }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //already selected obj
        if let index = selectedIndex{
            let cell = tableView.cellForRow(at: IndexPath(row: index,section: 0))
            cell?.accessoryType = .none
        }
        selectedSex = sexArr[indexPath.row]
        let cell = tableView.cellForRow(at: IndexPath(row: indexPath.row,section: 0))
        cell?.accessoryType = .checkmark
    }
//    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
//        if let index = selectedIndex {
//            let cell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: index, inSection: 0))
//            cell?.accessoryType = .None
//        }
//        
//        selectedSex = sexArr[indexPath.row]
//        
//        //update the checkmark for the current row
//        let cell = tableView.cellForRowAtIndexPath(indexPath)
//        cell?.accessoryType = .Checkmark
//    }
//    override func tableView(tableView: UITableView, willDeselectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
//        if let index = selectedIndex {
//            let cell = tableView.cellForRowAtIndexPath(NSIndexPath(forRow: index, inSection: 0))
//            cell?.accessoryType = .None
//        }
//        
//        selectedSex = sexArr[indexPath.row]
//        
//        //update the checkmark for the current row
//        let cell = tableView.cellForRowAtIndexPath(indexPath)
//        cell?.accessoryType = .Checkmark
//        return indexPath
//    }
    
    
    



//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCellWithIdentifier("GameCell", forIndexPath: indexPath)
//        cell.textLabel?.text = games[indexPath.row]
//        
//        if indexPath.row == selectedGameIndex {
//            cell.accessoryType = .Checkmark
//        } else {
//            cell.accessoryType = .None
//        }
//        return cell
//    }
    
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
     
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "sexSelectingConfirm" {
            
            
        }
    }
}
