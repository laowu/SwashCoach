//
//  DZZUserDetailTableViewController.swift
//  Swash
//
//  Created by 白大卫 on 16/12/28.
//  Copyright © 2016年 bdw. All rights reserved.
//

import UIKit

class DZZUserDetailTableViewController: UITableViewController {
    
    
    var iSelectedIndex = -1
    var iSelectedSection = -1
    
    var dicDetailInfo:Dictionary<String, String> = ["name":"ss","img":"xxx","id":"1314","add":"ig0-1"]
    
    var arrDetailItem:[String] = ["img","name","id","add"]
    
    
    var dicOtherInfo:Dictionary<String, String> = ["sex":"M","location":"xxx","sign":"pinch a loaf"]
    var arrOtherItem:[String] = ["sex","location","sign"]
    
    
    var user:DDZUser?

    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        self.tableView.estimatedRowHeight = 60
        self.tableView.rowHeight = UITableViewAutomaticDimension
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
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if(section == 0)
        {
            return arrDetailItem.count
        }
        else
        {
            return arrOtherItem.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if(indexPath.section == 0)
        {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "UserDetailCell")as?DZZUserDetailTableViewCell
            {
                
                if(indexPath.row == 0)
                {
                    cell.imgUserPic.image = UIImage(named: "1.jpg")
                }else
                {
                    cell.lblValue.text = dicDetailInfo[arrDetailItem[indexPath.row]]
                    
                }
                cell.lblItem.text = arrDetailItem[indexPath.row]
                
                return cell
            }
            else
            {
                print("err")
                return UITableViewCell()
            }
        }
        else
        {
            if let cell = tableView.dequeueReusableCell(withIdentifier: "UserDetailCell")as?DZZUserDetailTableViewCell
            {
                cell.lblItem.text = arrOtherItem[indexPath.row]
                cell.lblValue.text = dicOtherInfo[arrOtherItem[indexPath.row]]
                return cell
            }
            else
            {
                print("err")
                return UITableViewCell()
            }
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if(indexPath.section == 0)
        {
            if(indexPath.row == 0)
            {
                return 100
            }
            else
            {
                return 50
            }
        }
        else
        {
            return 60
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        var strTitle : String
        
        self.tableView!.deselectRow(at: indexPath, animated: true)
        
        if(indexPath.section == 0)
        {
            strTitle = arrDetailItem[indexPath.row]
        }
        else
        {
            strTitle = arrOtherItem[indexPath.row]
        }
        
        self.performSegue(withIdentifier: "ModifyDetailSegue", sender: strTitle)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let identifier = segue.identifier{
            
            var strTitle : String = "haha"
            if (identifier == "ModifyDetailSegue")
            {
                let ctl:DZZUserDetailModifyTableViewController = segue.destination as! DZZUserDetailModifyTableViewController
                if let strTitle = sender as? String
                {
                    ctl.strTtile = strTitle
                }
            }
        }
    }
    

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
