//
//  LostTableViewController.swift
//  Paaspop
//
//  Created by Casper Schobers on 07/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit

class LostTableViewController: UITableViewController {

    var lostObjects = [LostObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //lostObjects = JsonData.sharedInstance.getLostData()
        var lostitems = [LostObject]()
        var lostitem: LostObject!
        let url = NSURL(string: "https://ilost.co/api/search")!
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        request.HTTPBody = "{\n    \"query\": \"paaspop\",\n    \"size\": 10\n}".dataUsingEncoding(NSUTF8StringEncoding);
        
        
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request) { (data: NSData!, response: NSURLResponse!, error: NSError!) in
            
            if error != nil {
                // Handle error...
                return
            }
            
            //println(error)
            //println(response)
            //println(NSString(data: data, encoding: NSUTF8StringEncoding))
            let ilost = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as NSDictionary
            let result = ilost["result"] as NSDictionary
            let items = result["items"] as NSArray
            //println(items)
            for var index = 0; index < items.count; ++index{
                let id = items[index]["id"] as? Int
                var image = items[index]["image"] as? String
                let reportedDate = items[index]["reportedDate"]as? String
                let title = items[index]["title"]as? String
                if image == nil{
                    image = ""
                }
                //println(id)
                //println(image)
                //println(reportedDate)
                //println(title)
                lostitem = LostObject(id: id!, title: title!, location: "Paaspop", date: reportedDate!, imgUrl: image!)
                self.lostObjects.append(lostitem)
            }
            self.tableView.reloadData()
            //println(lostitems.count)
        }
        
        task.resume()

        //println("table")
        //println(lostObjects.count)
        //sample data lostobjects
        /*self.lostObjects = [LostObject(title:"Sleutelbos",location:"groote tent",date:"22-01-15",imgUrl:"empty"),
            LostObject(title:"Iphone",location:"wc's",date:"22-01-15",imgUrl:"empty"),
            LostObject(title:"Zwarte beurs",location:"Festival terrein",date:"23-01-15",imgUrl:"empty")]*/
        

        self.tableView.reloadData()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
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
        return self.lostObjects.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as LostTableViewCell
        
        var lostObject: LostObject
        lostObject = self.lostObjects[indexPath.row]

        // Configure the cell... todo
        cell.lblTitle.text = lostObject.title
        cell.lblDate.text = lostObject.date
        
        cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        
        

        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        // TODO: check height for string at index.
        return 55;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("lostDetail", sender: tableView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "lostDetail" {
            let lostDetailViewController = segue.destinationViewController as LostDetailViewController
            let indexPath = self.tableView.indexPathForSelectedRow()!
            lostDetailViewController.lostObject = self.lostObjects[indexPath.row]
            
        }
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
