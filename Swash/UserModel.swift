//
//  UserModel.swift
//  Swash
//
//  Created by 白大卫 on 16/12/5.
//  Copyright © 2016年 bdw. All rights reserved.
//

import Foundation


import SwiftyJSON


struct User {
    var name: String?
    var id: String?
    var rating: Int
    
    init(name: String?, id: String?, rating: Int) {
        self.name = name
        self.id = id
        self.rating = rating
    }
    
    
    

    
}



