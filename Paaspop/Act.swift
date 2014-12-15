//
//  Act.swift
//  Paaspop
//
//  Created by Casper Schobers on 15/12/14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

import Foundation
class Act {
    
    var name: String
    var info: String
    var photoUrl: String
    var times: [String]
    
    init(name: String, info: String, photoUrl: String, times: [String]){
        self.name = name
        self.info = info
        self.photoUrl = photoUrl
        if(!times.isEmpty)
        {
            self.times = times
        }
        else
        {
            self.times = [String]()
        }
    }
    
}