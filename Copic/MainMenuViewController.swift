//
//  MainMenuViewController.swift
//  Copic
//
//  Created by Srividhya Gopalan on 8/7/15.
//  Copyright (c) 2015 Srividhya Gopalan. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var firstTimeLabel: UILabel!
    @IBOutlet weak var mainMenuLabel: UILabel!
    let pinkColor = UIColor(red: 229, green: 14, blue: 72, alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
                // Do any additional setup after loading the view.
        var firstYes = isAppAlreadyLaunchedOnce()
        if firstYes == false {
            println("inside")
            performSegueWithIdentifier("next", sender: self)
        }

        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)

    }
    

    func isAppAlreadyLaunchedOnce()->Bool{
        let defaults = NSUserDefaults.standardUserDefaults()
        
        if let isAppAlreadyLaunchedOnce = defaults.stringForKey("isAppAlreadyLaunchedOnce"){
            //mainMenuLabel.text = "Not First Time"
            println("App already launched")
            return true
        }else{
            defaults.setBool(true, forKey: "isAppAlreadyLaunchedOnce")
            println("App launched first time")
            firstTimeLabel.text = "First time? Click there ->"
            firstTimeLabel.backgroundColor = pinkColor
            //mainMenuLabel.text = "First Time"
            //performSegueWithIdentifier("next", sender: self)
            return false
        }
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
