//
//  MapViewController.swift
//  Paaspop
//
//  Created by Etienne Cooijmans on 08/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//

import UIKit

    // TODO: Make UIImageView zoomable.

/// An updated version of FloorPlanController, this one feature pinch-zoom and panning support as well as actual stagenames and connected acts and timetable.
/// Currently uses a sketched up floorplan for simplicity and visibility. At time of writing we do not have an up-to-date (empty) map.
class MapViewController: UIViewController {

    // Variables
    
    
    /// Keep track of stages and their acts/crowds.
    var stages : [Stage] = [Stage]() // You might want to do this outside of this controller.
    
    /// Keep track of UIButtons of stages. Needed to dynamize stage mapping.
    var StageUIButtons : [UIButton] = [UIButton]()
    
    /// To map Buttons to their respective Stages.
    var StagesOfButtons = [UIButton: Stage]()

    
    // Outlets
    
    @IBOutlet weak var buttonSelectedStage: UIButton!    
    @IBOutlet weak var buttonCurrentAct: UIButton!
    
    // Outlets of Stages
    @IBOutlet weak var buttonStageApollo: UIButton!
    @IBOutlet weak var buttonStageRoxy: UIButton!
    @IBOutlet weak var buttonStageJackDaniels: UIButton!
    @IBOutlet weak var buttonStageStardust: UIButton!
    @IBOutlet weak var buttonStageThunderbolt: UIButton!
    
    
    // Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Add buttons to list for future reference.
        StageUIButtons.append(buttonStageApollo)
        StageUIButtons.append(buttonStageRoxy)
        StageUIButtons.append(buttonStageJackDaniels)
        StageUIButtons.append(buttonStageStardust)
        StageUIButtons.append(buttonStageThunderbolt)
        
        // Initialize stages for heatmapping.
        for i in 1...StageUIButtons.count{
            stages.append(Stage(name: "stage" + String(i)))
        }
        
        // Maps stages to their actual buttons.
        for i in 0...StageUIButtons.count - 1{
            StagesOfButtons[StageUIButtons[i]] = stages[i]
        }
        
        // Add Acts to stages for lookup in ViewController.
        stages[0].acts.append(Globals.Acts[0])
        stages[1].acts.append(Globals.Acts[1])
        stages[2].acts.append(Globals.Acts[2])
        stages[3].acts.append(Globals.Acts[3])
        stages[4].acts.append(Globals.Acts[4])
        
        // Sets backgroundcolor at load of view.
        for (UIButton, Stage) in StagesOfButtons{
            var occupancy = Stage.occupancy
            UIButton.backgroundColor = UIColor(red: 155, green: 0, blue: 200, alpha: CGFloat(occupancy) / 10)
        }
    }
    
    /// Fired when any of the stage's UIButtons are touched.
    @IBAction func onStageTouch(sender: UIButton) {
        var stagename = StagesOfButtons[sender]?.name
        var occupancy = StagesOfButtons[sender]?.occupancy
        var currentact = StagesOfButtons[sender]?.acts[0].title
        
        // set labeltext to stagename
        buttonSelectedStage.setTitle(stagename, forState: .Normal)
        
        // set button's backgroundcolor to stage's occupancy.
        sender.backgroundColor = UIColor(red: 155, green: 0, blue: 200, alpha: CGFloat(occupancy!) / 10)
        
        // set second label to current act
        buttonCurrentAct.setTitle(currentact, forState: .Normal)
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
