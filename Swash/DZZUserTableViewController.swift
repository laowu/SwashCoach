//
//  DZZUserTableViewController.swift
//  Swash
//
//  Created by 白大卫 on 16/12/5.
//  Copyright © 2016年 bdw. All rights reserved.
//

import UIKit

class DZZUserTableViewController: UITableViewController {

    var users : [User] = Users
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.tableView.estimatedRowHeight = 130
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        //self.tableView.registerClass(DZZUserTableViewCell.classForCoder(), forCellReuseIdentifier: "UserCell")
        //self.tableView.registerNib(nil, forCellReuseIdentifier: "UserCell")
        
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

//    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        rowHeight = UITableViewAutomaticDimension
//    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
//    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        
//        let view:UIView = UIView(frame: CGRectMake(0, 0, 320, 1))
//        view.backgroundColor = UIColor.clearColor()
//        return view
//        
//    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    
//    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let view:UIView = UIView(frame: CGRectMake(0 , 0 , 320 , 1 ))
//        view.backgroundColor = UIColor.clearColor()
//        return view
//    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        if(section == 0)
        {
            return 1
        }
        else if(section == 1)
        {
            //return users.count
            return UtilsArr.count
        }
        else
        {
            return users.count
            //return 1
        }
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("UserCell", forIndexPath: indexPath)as!DZZUserTableViewCell
        
        
        // Configure the cell...
        
        if(indexPath.section == 0)
        {
            let cell = tableView.dequeueReusableCellWithIdentifier("UserInfoCell")as!DZZUserInfoTableViewCell
            cell.idLabel.text = "bdw1992"
            cell.nameLabel.text = "老五啊"
            cell.userImage.image = UIImage(named: "1.jpg")
            return cell
        }
        else if(indexPath.section == 1)
        {
            let cell = tableView.dequeueReusableCellWithIdentifier("UtilsCell")as!DZZUtilsTableViewCell
            
            let strUtil:String = UtilsArr[indexPath.row]
            let strUtilImgPath:String = UtilsImgDic[strUtil]!
            cell.utilsImage.image = UIImage(named: strUtilImgPath)
            cell.utilsLabel.text = strUtil
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCellWithIdentifier("UserCell")as!DZZUserTableViewCell
            let user = users[indexPath.row] as User
            cell.idLabel?.text = user.name
            cell.nameLabel?.text = user.id
            return cell
            
        }
    
        
        
        
    }
    
    @IBAction func confirmFromSexSelecting(segue:UIStoryboardSegue)
    {
    
    
    }
    @IBAction func cancelFromSexSelecting(segue:UIStoryboardSegue)
    {
    
    
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "detailedUserInfoSegue" {
            
            let ctl:DZZSexSelectingTableViewController = segue.destinationViewController as!DZZSexSelectingTableViewController
            ctl.selectedSex = "Unknoooonw"
            
        }
    }

    //detailedUserInfoSegue
    
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

}
