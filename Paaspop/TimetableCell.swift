//
//  TimetableCell.swift
//  Paaspop
//
//  Created by Fhict on 13/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit

class TimetableCell: UITableViewCell {
    
    @IBOutlet weak var actImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var actNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
