//
//  DZZUserModel.swift
//  Swash
//
//  Created by 白大卫 on 16/12/28.
//  Copyright © 2016年 bdw. All rights reserved.
//

import Foundation


struct DDZUser {
    var name: String?
    var id: String?
    //var imageUrl: String?
    
    init(name: String?, id: String?) {
        self.name = name
        self.id = id
        //self.rating = rating
    }
}