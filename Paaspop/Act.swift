//
//  Act.swift
//  Paaspop
//
//  Created by Casper Schobers on 15/12/14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

import Foundation
class Act {
    
    var title: String
    var subtitle: String
    var info: String
    var photoUrl: String
    var stage: String
    var times: [String]
    var favorite: Bool
    
    init(title: String, subtitle:String, info: String, photoUrl: String, stage: String,times: [String], favorite: Bool){
        self.title = title
        self.subtitle = subtitle
        self.info = info
        self.photoUrl = photoUrl
        self.stage = stage
        if(!times.isEmpty)
        {
            self.times = times
        }
        else
        {
            self.times = [String]()
        }
        self.favorite = favorite
    }
    
}