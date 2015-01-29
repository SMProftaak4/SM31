//
//  LostDetailViewController.swift
//  Paaspop
//
//  Created by Casper Schobers on 07/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit

class LostDetailViewController: UIViewController {
    
    
    @IBOutlet weak var wbILost: UIWebView!
    

    var lostObject: LostObject!

    @IBAction func Refresh(sender: AnyObject) {
        wbILost.reload()
    }
    @IBAction func StopLoading(sender: AnyObject) {
        wbILost.stopLoading()
    }
    @IBAction func PageBack(sender: AnyObject) {
        wbILost.goBack()
    }
    @IBAction func PageForward(sender: AnyObject) {
        wbILost.goForward()
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        var stringurl = "https://ilost.co/nl/found/" + String(lostObject.id)
        let url = NSURL(string: stringurl)
        
        let request = NSURLRequest(URL: url!)
        
        wbILost.loadRequest(request)
        


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
