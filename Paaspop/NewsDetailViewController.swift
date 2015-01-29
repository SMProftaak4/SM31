//
//  NewsDetailViewController.swift
//  Paaspop
//
//  Created by Casper Schobers on 16/12/14.
//  Copyright (c) 2014 Fontys. All rights reserved.
//

import UIKit

class NewsDetailViewController: UIViewController {

    var newsitem: NewsItem!
    
    @IBOutlet weak var tvText: UITextView!
    @IBOutlet weak var lblSubTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.newsitem.title
        self.lblSubTitle.text = self.newsitem.subTitle
        self.tvText.text = self.newsitem.date + " - " + self.newsitem.text// Do any additional setup after loading the view.
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
