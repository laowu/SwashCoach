//
//  AlfaViewController.swift
//  Swash
//
//  Created by 白大卫 on 16/12/8.
//  Copyright © 2016年 bdw. All rights reserved.
//

import UIKit

class AlfaViewController: UIViewController {

    @IBOutlet var btnButtno: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func returnfromBeta(segue:UIStoryboardSegue)
    {
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let ctl:BetaViewController = segue.destinationViewController as! BetaViewController
    
        ctl.strLblText = "haha"
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
