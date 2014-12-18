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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //var image = UIImage(named: "paaspopLogo.png")! as UIImage
        var imageHead = UIImage(named: "paaspopHead.png")! as UIImage
        //self.navigationController?.navigationBar.setBackgroundImage(image, forBarMetrics: .Default)
        self.ivPhoto.image = imageHead  
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
