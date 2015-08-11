//
//  NumButtonTutorialViewController.swift
//  Copic
//
//  Created by Srividhya Gopalan on 8/7/15.
//  Copyright (c) 2015 Srividhya Gopalan. All rights reserved.
//

import UIKit

class NumButtonTutorialViewController: UIViewController {

    var buttonsLeft: Int = 50
    var secondsPassed = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "backToCountMode") {
            //backgroundMusic.stop()
            var svc = segue.destinationViewController as! _00ViewController;
            svc.buttonsLeft = self.buttonsLeft
            svc.count = self.secondsPassed
        }
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
