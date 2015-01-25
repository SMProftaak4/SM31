//
//  stageCell.swift
//  Paaspop
//
//  Created by Fhict on 11/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit

class stageCell: UICollectionViewCell {
    
    let textLabel: UILabel!
    let imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*2/3))
        imageView.contentMode = UIViewContentMode.ScaleAspectFit
        contentView.addSubview(imageView)
        
        let textFrame = CGRect(x: 0, y: imageView.frame.size.height, width: frame.size.width, height: frame.size.height/3)
        textLabel = UILabel(frame: textFrame)
        textLabel.font = textLabel.font.fontWithSize(15)
        
        let textcolor: UIColor = UIColor( red: CGFloat(220/255.0), green: CGFloat(0/255.0), blue: CGFloat(94/255.0), alpha: CGFloat(1.0) )
        
        textLabel.textColor = textcolor
        textLabel.textAlignment = .Center
        contentView.addSubview(textLabel)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
