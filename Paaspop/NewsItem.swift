//
//  NewsItem.swift
//  Paaspop
//
//  Created by Casper Schobers on 16/12/14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

import Foundation
class NewsItem {
    var title: String
    var subTitle: String
    var date: String
    var text: String
    
    init(title: String, subTitle: String, date: String, text: String){
        self.title = title
        self.subTitle = subTitle
        self.date = date
        self.text = text
    }
}