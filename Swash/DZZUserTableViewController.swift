//
//  DZZUserTableViewController.swift
//  Swash
//
//  Created by 白大卫 on 17/1/9.
//  Copyright © 2017年 bdw. All rights reserved.
//

import UIKit

class DZZUserTableViewController: UITableViewController {

    
    var users : [User] = Users
    
    var user:DDZUser?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.estimatedRowHeight = 130
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
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
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

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if(indexPath.section == 0)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserInfoCell")as!DZZUserInfoTableViewCell
            cell.idLabel.text = "bdw1992"
            cell.nameLabel.text = "老五啊"
            cell.userImage.image = UIImage(named: "1.jpg")
            return cell
        }
        else if(indexPath.section == 1)
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UtilsCell")as!DZZUtilsTableViewCell
            
            let strUtil:String = UtilsArr[indexPath.row]
            let strUtilImgPath:String = UtilsImgDic[strUtil]!
            cell.utilsImage.image = UIImage(named: strUtilImgPath)
            cell.utilsLabel.text = strUtil
            return cell
        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell")as!DZZUserTableViewCell
            let user = users[indexPath.row] as User
            cell.idLabel?.text = user.name
            cell.nameLabel?.text = user.id
            return cell
            
        }
    }
 

    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20
    }
    
    
   
    
    @IBAction func confirmFromUserDetail(_ segue:UIStoryboardSegue)
    {
        
    }
    
    @IBAction func cancelFromUserDetail(_ segue:UIStoryboardSegue)
    {
        
    }
    
    @IBAction func unwindHome(_ segue: UIStoryboardSegue) {
        // this is intentionally blank
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
