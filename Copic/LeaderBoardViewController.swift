//
//  LeaderBoardViewController.swift
//  Copic
//
//  Created by Srividhya Gopalan on 9/2/15.
//  Copyright (c) 2015 Srividhya Gopalan. All rights reserved.
//

import UIKit
import Parse

class LeaderBoardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var unlimScores: [PFObject] = []
    var timedScores: [PFObject] = []
    
    var unlimn = 1
    var timedn = 1

    @IBOutlet weak var timedTable: UITableView!
    @IBOutlet weak var unlimTable: UITableView!
    @IBOutlet weak var borderView: UIImageView!
    @IBOutlet weak var borderView2: UIImageView!
    
    var pinkColor: UIColor = UIColor(patternImage: UIImage(named: "brightGreen")!)
    var brightGreenColor: UIColor = UIColor(patternImage: UIImage(named: "pink")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let unlimitedQuery = PFQuery(className: "Unlimited")
        unlimitedQuery.limit = 10000
        unlimitedQuery.orderByDescending("Score")
        unlimitedQuery.findObjectsInBackgroundWithBlock {(result: [AnyObject]?, error: NSError?) -> Void in
            if error != nil {
                //println("error")
            }
            else {
            self.unlimScores = result as! [PFObject]
            //println(self.unlimScores.count)
            self.unlimTable.delegate = self
            self.unlimTable.dataSource = self
            self.unlimTable.reloadData()
            }
        }
        
//        for var i = 0; i < 2; i++ {
//            var newPost = PFObject (className:"Unlimited")
//            newPost["Name"] = NSUserDefaults.standardUserDefaults().valueForKey("appName")
//            newPost["Score"] = 5
//            newPost.saveInBackgroundWithBlock {
//                (success: Bool, error: NSError?) -> Void in
//                if (success) {
//                    //println("activity saved")
//                } else {
//                    println("activity not saved")
//                }
//                
//            }
//
//        }
        
        let timedQuery = PFQuery(className: "Timed")
        timedQuery.limit = 10000
        timedQuery.orderByDescending("Score")
        timedQuery.findObjectsInBackgroundWithBlock {(result: [AnyObject]?, error: NSError?) -> Void in
            self.timedScores = result as! [PFObject]
            //println(self.timedScores.count)
            self.timedTable.delegate = self
            self.timedTable.dataSource = self
            self.timedTable.reloadData()
        }
        
        timedTable.hidden = false
        unlimTable.hidden = true
        borderView2.hidden = true
        borderView.hidden = false

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func timedButtonTapped(sender: AnyObject) {
        timedTable.hidden = false
        unlimTable.hidden = true
        borderView.hidden = false
        borderView2.hidden = true
    }
    
    
    @IBAction func unlimButtonTapped(sender: AnyObject) {
        timedTable.hidden = true
        unlimTable.hidden = false
        borderView.hidden = true
        borderView2.hidden = false
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.timedTable {
            return self.timedScores.count
        }
        if tableView == self.unlimTable {
            return self.unlimScores.count
        }
        return 1
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        
        
        
        if tableView == self.timedTable {
            let row = indexPath.row
            
            var displayName = timedScores[row]["Score"] as! Int
            //println("2")
            cell.textLabel!.text = String(stringInterpolationSegment: row + 1) + ". "  +  (timedScores[row]["Name"] as! String) + " " + String(stringInterpolationSegment: displayName)
            if NSUserDefaults.standardUserDefaults().stringForKey("appName") != "Unknown" {
                if NSUserDefaults.standardUserDefaults().stringForKey("appName") == (timedScores[row]["Name"] as! String){
                    cell.textLabel!.textColor = pinkColor
                }
                else {
                    cell.textLabel!.textColor = UIColor.blackColor()
                }
            }
        }
        else {
            
            let row = indexPath.row
            var displayName = unlimScores[row]["Score"] as! Int
            //println((unlimScores[row]["Name"] as! String) + String(stringInterpolationSegment: displayName))
            cell.textLabel!.text = String(stringInterpolationSegment: row + 1) + ". "  +  (unlimScores[row]["Name"] as! String) + " " + String(stringInterpolationSegment: displayName)
            unlimn++
            var currentUserName = unlimScores[row]["Name"] as! String
            if NSUserDefaults.standardUserDefaults().stringForKey("appName") != "Unknown" {
                if NSUserDefaults.standardUserDefaults().stringForKey("appName") == currentUserName {
                    cell.textLabel!.textColor = brightGreenColor
                }
                else {
                    cell.textLabel!.textColor = UIColor.blackColor()
                }
            }
        }
        
        return cell
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
