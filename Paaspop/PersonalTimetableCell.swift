//
//  personalTimetableCell.swift
//  Paaspop
//
//  Created by Fhict on 22/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit

class PersonalTimetableCell: UICollectionViewCell {
    let circleImage: UIImageView!
    let stageImage: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        circleImage = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*2/3))
        
        circleImage.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(circleImage)
        
        stageImage = UIImageView(frame: CGRect(x: 50, y: 50, width: frame.size.width - 100, height: frame.size.height*2/3 - 100))
        
        stageImage.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(stageImage)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
