//
//  Stage.swift
//  Paaspop
//
//  Created by Etienne Cooijmans on 03/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import Foundation

/// Class for holding stage data. 
/// Mostly how crowded it is for the heatmapping feature.
class Stage{
    
    var name : String
    var occupancy : Int
    
    /// Currently unimplemented.
    /// Displays list of acts at the stage a in chronological order.
    //var _acts : [Act]
    
    
    init(name : String){
        self.name = name
        self.occupancy = 0
        randomizeData() // Fake occupancy data
    }

    /// Sets crowd to a number between 0 and 10 representing the level of occupancy(low to high).
    func randomizeData(){
        // arc4random returns between 0 and n-1.
        self.occupancy = Int(arc4random_uniform(11))
    }
}