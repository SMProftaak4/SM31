//
//  TimetableStagesViewController.swift
//  Paaspop
//
//  Created by Fhict on 08/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit
import Foundation

let reuseIdentifier = "StageCell"
var cellColor = true

class TimetableStagesViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        self.collectionView!.registerClass(stageCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
        
        let bgcolor: UIColor = UIColor( red: CGFloat(42/255.0), green: CGFloat(29/255.0), blue: CGFloat(59/255.0), alpha: CGFloat(1.0) )

        self.collectionView!.backgroundColor = bgcolor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // 1
        return 1
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 10
        return 10
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as stageCell
        
        cell.backgroundColor = UIColor.clearColor()

        cell.textLabel.lineBreakMode = .ByWordWrapping
        cell.textLabel.numberOfLines = 0
        
        switch indexPath.row
        {
            case 0:
                cell.imageView.image = UIImage(named: "logo_JackDaniels.png")
                cell.textLabel.text = "Jack Daniel's Stage"
        case 1:
            cell.imageView.image = UIImage(named: "bavaria.png")
            cell.textLabel.text = "Bavaria Playground"
            default:
                cell.imageView.image = UIImage(named: "iTunesArtwork@2x.png")
                cell.textLabel.text = "Stage " + String(indexPath.row)
        }
        
        return cell
    }
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let selectedCell = collectionView.cellForItemAtIndexPath(indexPath) as stageCell
        
        self.performSegueWithIdentifier("StageSelectToTimetable", sender: self)
    }
    
    // MARK: UICollectionViewDelegate
    
    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
    return true
    }
    */
    
    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
    return true
    }
    */
    
    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
    return false
    }
    
    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
    return false
    }
    
    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */
    
}

