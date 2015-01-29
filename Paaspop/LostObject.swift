//
//  LostObject.swift
//  Paaspop
//
//  Created by Casper Schobers on 07/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import Foundation
class LostObject {
    var id: Int
    var title: String
    var location: String
    var date: String
    var imgUrl: String
    
    init(id: Int, title: String, location: String, date: String, imgUrl: String){
        self.id = id
        self.title = title
        self.location = location
        self.date = date
        self.imgUrl = imgUrl
    }
}