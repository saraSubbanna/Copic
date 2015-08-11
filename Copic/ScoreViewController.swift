//
//  ScoreViewController.swift
//  Copic
//
//  Created by Srividhya Gopalan on 8/6/15.
//  Copyright (c) 2015 Srividhya Gopalan. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {

    var newScore: String = "test"
    var newTitle: String = "Game Over"
    var highScore: String = "high"
    var currentScore: Int = 0
   
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var scoreTitle: UILabel!
    @IBOutlet weak var topScore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = newScore
        scoreTitle.text = newTitle
        topScore.text = highScore
        // Do any additional setup after loading the view.
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
