//
//  ScoreViewController.swift
//  Copic
//
//  Created by Srividhya Gopalan on 8/6/15.
//  Copyright (c) 2015 Srividhya Gopalan. All rights reserved.
//

import UIKit
import Parse

class ScoreViewController: UIViewController {

    var newScore: String = "test"
    var newTitle: String = "Game Over"
    var highScore: String = "high"
    var currentScore: Int = 0
    var which: Bool!
    var username = "Unknown"
    var tField: UITextField!
    var beingChanged: Bool = false
   
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreTitle: UILabel!
    @IBOutlet weak var topScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = newScore
        scoreTitle.text = newTitle
        topScore.text = highScore
        
       
        
        if which == true {
            if currentScore >= NSUserDefaults.standardUserDefaults().integerForKey("highscore") {
                beingChanged = true
                var newPost = PFObject (className:"Unlimited")
                newPost["Name"] = NSUserDefaults.standardUserDefaults().stringForKey("appName")
                newPost["Score"] = currentScore
                newPost.saveInBackgroundWithBlock {
                    (success: Bool, error: NSError?) -> Void in
                    if (success) {
                        //println("activity saved")
                        self.beingChanged = false
                    } else {
                        //println("activity not saved")
                    }
                
                }
            }
            
        }
        else {
            if currentScore >= NSUserDefaults.standardUserDefaults().integerForKey("timedscore") {
                beingChanged = true
            var newPost = PFObject (className:"Timed")
            newPost["Name"] = NSUserDefaults.standardUserDefaults().stringForKey("appName")
            newPost["Score"] = currentScore
            newPost.saveInBackgroundWithBlock {
                (success: Bool, error: NSError?) -> Void in
                if (success) {
                    //println("activity saved")
                    self.beingChanged = false
                } else {
                    //println("activity not saved")
                }
                
            }
            }
            
        }
        
        // Do any additional setup after loading the view.
    }

    @IBAction func replayButtonTapped(sender: AnyObject) {
        if which == true {
            performSegueWithIdentifier("replayInfinite", sender: nil)
        }
        else {
            performSegueWithIdentifier("replayTimed", sender: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String?, sender: AnyObject?) -> Bool {
        return true
        if beingChanged == true {
            return false
        }
        return true
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
