//
//  LostTableViewCell.swift
//  Paaspop
//
//  Created by Casper Schobers on 07/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit



class LostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ivLostObject: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDate: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
