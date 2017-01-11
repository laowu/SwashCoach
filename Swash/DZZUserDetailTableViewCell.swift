//
//  DZZUserDetailTableViewCell.swift
//  Swash
//
//  Created by 白大卫 on 17/1/11.
//  Copyright © 2017年 bdw. All rights reserved.
//

import UIKit

class DZZUserDetailTableViewCell: UITableViewCell {

    @IBOutlet var lblValue: UILabel!
    @IBOutlet var lblItem: UILabel!
    @IBOutlet var imgUserPic: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
