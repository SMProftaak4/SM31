//
//  JsonData.swift
//  Paaspop
//
//  Created by Casper Schobers on 22/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import Foundation
private let _SingletonJsonData = JsonData()

class JsonData {
    
    
    class var sharedInstance : JsonData {
        return _SingletonJsonData
    }
    
    init() {
        println("jeeej singleton");
    }
    

    func getLostData() -> [LostObject]
    {
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
                lostitems.append(lostitem)
            }
            
            println(lostitems.count)
        }
        
        task.resume()
        println(lostitems.count)
        return lostitems
    }
    
    func getTimeData()
    {
        let url = NSURL(string: "http://www.paaspop.nl/json/gettimetable?callback=api")!
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request) { (data: NSData!, response: NSURLResponse!, error: NSError!) in
            
            if error != nil {
                // Handle error...
                return
            }
            
            println(error)
            println(response)
            var api = NSString(data: data, encoding: NSUTF8StringEncoding)
            var result = api?.substringFromIndex(5)
            let substrindex = (countElements(result!) - 2)
            result!.substringToIndex(advance(result!.startIndex, substrindex))
            let goededata = (result! as NSString).dataUsingEncoding(NSUTF8StringEncoding)
            if let time = NSJSONSerialization.JSONObjectWithData(goededata!, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary
            {
                println(time)
            }
            else
            {
                println("error")
            }
            //println(ilost)
            
        }
        
        task.resume()
        
        
    }
    
    func getActData(actName: String)
    {
        let url = NSURL(string: "http://www.paaspop.nl/json/getact?ID="+actName+"&callback=api")!
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request) { (data: NSData!, response: NSURLResponse!, error: NSError!) in
            
            if error != nil {
                // Handle error...
                return
            }
            
            println(error)
            println(response)
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
            
        }
        
        task.resume()
        
        
    }
    
    func getBlogData()
    {
        let url = NSURL(string: "http://www.paaspop.nl/json/getblog?callback=api")!
        let request = NSMutableURLRequest(URL: url)
        request.HTTPMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithRequest(request) { (data: NSData!, response: NSURLResponse!, error: NSError!) in
            
            if error != nil {
                // Handle error...
                return
            }
            
            println(error)
            println(response)
            println(NSString(data: data, encoding: NSUTF8StringEncoding))

        }
        
        task.resume()
        
        
    }




}