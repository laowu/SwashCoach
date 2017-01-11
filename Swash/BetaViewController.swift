//
//  BetaViewController.swift
//  Swash
//
//  Created by 白大卫 on 16/12/8.
//  Copyright © 2016年 bdw. All rights reserved.
//

import UIKit

class BetaViewController: UIViewController {

    var strLblText:String?
    @IBOutlet var lblValueFromA: UILabel!
    @IBOutlet var btnButtonToA: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblValueFromA.text = strLblText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func returnedFromTmp(_ segue:UIStoryboardSegue)
    {
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
