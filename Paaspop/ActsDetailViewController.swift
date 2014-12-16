//
//  ActsDetailViewController.swift
//  Paaspop
//
//  Created by Casper Schobers on 16/12/14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

import UIKit

class ActsDetailViewController: UIViewController {
    
    //act variable
    var act: Act!

    @IBOutlet weak var ivPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var title: String
        if !act.subtitle.isEmpty{
            title = act.title + "(" + act.subtitle + ")"
        } else{
            title = act.title
        }
        self.title  = title
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
