//
//  FloorPlanViewController.swift
//  Paaspop
//
//  Created by Etienne Cooijmans on 03/01/15.
//  Copyright (c) 2015 Fontys. All rights reserved.
//
                    // TODO: Make UIImageView scrollable, zoomable.
import UIKit

/// FloorPlan is used synonymously to prevent any confusion with dictionaries("Maps").
/// Currently uses a sketched up floorplan for simplicity and visibility. At time of writing we do not have an up-to-date (empty) map.
class FloorPlanViewController: UIViewController {

    /// Keep track of stages and their acts/crowds.
    var stages : [Stage] = [Stage]() // You might want to do this outside of this controller.
    
    /// Keep track of UIButtons of stages. Needed to dynamize stage mapping.
    var StageUIButtons : [UIButton] = [UIButton]()
    
    /// To map Buttons to their respective Stages.
    var StagesOfButtons = [UIButton: Stage]()
    
    // TODO: Use actual stagenames when actual map is released.
    @IBOutlet weak var Stage1: UIButton!
    @IBOutlet weak var Stage2: UIButton!
    @IBOutlet weak var Stage3: UIButton!
    @IBOutlet weak var Stage4: UIButton!
    @IBOutlet weak var Stage5: UIButton!
    @IBOutlet weak var stageLabel: UILabel!
    @IBOutlet weak var currentActLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        // Add buttons to list for future reference.
        StageUIButtons.append(Stage1)
        StageUIButtons.append(Stage2)
        StageUIButtons.append(Stage3)
        StageUIButtons.append(Stage4)
        StageUIButtons.append(Stage5)
    
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
        stageLabel.text = stagename
        
        // set button's backgroundcolor to stage's occupancy.
        sender.backgroundColor = UIColor(red: 155, green: 0, blue: 200, alpha: CGFloat(occupancy!) / 10)
        
        // set second label to current act
        currentActLabel.text = currentact
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
