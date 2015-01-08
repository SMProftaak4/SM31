//
//  LostObject.swift
//  Paaspop
//
//  Created by Casper Schobers on 07/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import Foundation
class LostObject {
    var title: String
    var location: String
    var date: String
    var imgUrl: String
    
    init(title: String, location: String, date: String, imgUrl: String){
        self.title = title
        self.location = location
        self.date = date
        self.imgUrl = imgUrl
    }
}