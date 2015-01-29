//
//  HomeViewController.swift
//  Paaspop
//
//  Created by Casper Schobers on 18/12/14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var ivPhoto: UIImageView!
    @IBOutlet weak var buttonArtist: UIButton!
    @IBOutlet weak var buttonTime: UIButton!
    @IBOutlet weak var buttonPersonal: UIButton!
    @IBOutlet weak var buttonMap: UIButton!
    @IBOutlet weak var buttonBlog: UIButton!
    @IBOutlet weak var ButtonILost: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //var image = UIImage(named: "paaspopLogo.png")! as UIImage
        var imageHead = UIImage(named: "paaspopHead.png")! as UIImage
        //self.navigationController?.navigationBar.setBackgroundImage(image, forBarMetrics: .Default)
        self.ivPhoto.image = imageHead
        self.ivPhoto.layer.zPosition = 10
        self.buttonArtist.layer.zPosition = 1
        self.buttonTime.layer.zPosition = 1
        self.buttonPersonal.layer.zPosition = 1
        self.buttonMap.layer.zPosition = 1
        self.buttonBlog.layer.zPosition = 1
        self.ButtonILost.layer.zPosition = 1
       // self.navigationController?.navigationBar.set
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
