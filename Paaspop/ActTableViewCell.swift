//
//  ActTableViewCell.swift
//  Paaspop
//
//  Created by Casper Schobers on 16/12/14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

import UIKit

class ActTableViewCell: UITableViewCell {

    @IBOutlet weak var btnFavorite: UIButton!
    @IBOutlet weak var lvPhoto: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    var act: Act!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func ChangeFavorite(sender: UIButton) {
        if act.favorite{
            let notFilled: UIImage = UIImage(named: "star_not_filled.png")!
            self.btnFavorite.setBackgroundImage(notFilled, forState: UIControlState.Normal)
            act.favorite = false
        }else{
            let filled: UIImage = UIImage(named: "star_filled.png")!
            self.btnFavorite.setBackgroundImage(filled, forState: UIControlState.Normal)
            act.favorite = true
        }
        
    }

}
