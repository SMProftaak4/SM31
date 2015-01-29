//
//  ZondagTableViewController.swift
//  Paaspop
//
//  Created by Fhict on 13/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit

class ZondagTableViewController: UITableViewController {
    
    let reuseIdentifier = "TimetableCell"
    let acts = Globals.Acts
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        let appearance = UITabBarItem.appearance()
        let attributes = [NSFontAttributeName:UIFont(name: "Helvetica Neue", size: 20)!]
        appearance.setTitleTextAttributes(attributes, forState: .Normal)
        
        let bgcolor: UIColor = UIColor( red: CGFloat(42/255.0), green: CGFloat(29/255.0), blue: CGFloat(59/255.0), alpha: CGFloat(1.0) )
        
        self.tableView!.backgroundColor = bgcolor
        self.tableView.separatorStyle = UITableViewCellSeparatorStyle.None
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return acts.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(reuseIdentifier) as TimetableCell
        
        cell.actNameLabel.text = acts[acts.count - indexPath.row - 1].title
        cell.timeLabel.text = String(indexPath.row + 13) + ":30-" + String(indexPath.row + 14) + ":30"
        let image : UIImage = UIImage(named: acts[acts.count - indexPath.row - 1].photoUrl)!
        cell.actImage.image = image
        
        let bgcolor: UIColor = UIColor( red: CGFloat(42/255.0), green: CGFloat(29/255.0), blue: CGFloat(59/255.0), alpha: CGFloat(1.0) )
        
        cell.backgroundColor = bgcolor
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let actDetailViewController = segue.destinationViewController as ActsDetailViewController
        let indexPath = self.tableView.indexPathForSelectedRow()!
        
        let selectedCell = self.tableView.cellForRowAtIndexPath(self.tableView.indexPathForSelectedRow()!) as TimetableCell
        
        var selectedAct:Act = Act(title: "test", subtitle: "", info: "", photoUrl: "anouk.jpg", stage: "",times: [""], favorite: false)
        
        for currentItem in acts
        {
            println(currentItem.title + "-" + selectedCell.actNameLabel.text!)
            if currentItem.title == selectedCell.actNameLabel.text
            {
                selectedAct = currentItem
            }
        }
        
        actDetailViewController.act = selectedAct
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
