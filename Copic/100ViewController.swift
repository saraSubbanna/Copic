//
//  100ViewController.swift
//  Copic
//
//  Created by Srividhya Gopalan on 8/7/15.
//  Copyright (c) 2015 Srividhya Gopalan. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class _00ViewController: UIViewController {
    

    
    @IBOutlet weak var time: UILabel!
    //@IBOutlet weak var countUp: UILabel!
    var greenButton: UIImage = (UIImage(named: "greenButton") as UIImage?)!
    
    var redButton: UIImage = (UIImage(named: "redButton") as UIImage?)!
    
    var clearButton: UIImage = (UIImage(named: "clearButton") as UIImage?)!
    
    var purpleButton: UIImage = (UIImage(named: "purpleButton") as UIImage?)!
    
    var yellowButton: UIImage = (UIImage(named: "yellowButton") as UIImage?)!
    
    var tealButton: UIImage = (UIImage(named: "tealButton") as UIImage?)!
    
    var orangeButton: UIImage = (UIImage(named: "orangeButton") as UIImage?)!
    
    var darkGreenButton: UIImage = (UIImage(named: "darkGreenButton") as UIImage?)!
    
    var lightGreenButton: UIImage = (UIImage(named: "lightGreenButton") as UIImage?)!
    
    var redButton1: UIImage = (UIImage(named: "redButton-1") as UIImage?)!
    
    var greyButton: UIImage = (UIImage(named: "greyButton") as UIImage?)!
    
    var redButtonColor: UIColor = UIColor(patternImage: UIImage(named: "redButton")!)
    var greenButtonColor: UIColor = UIColor(patternImage: UIImage(named: "greenButton")!)
    var clearButtonColor: UIColor = UIColor(patternImage: UIImage(named: "clearButton")!)
    
    var inGame = false
    
    var finishedSet = 0
    
    var buttonBeep = AVAudioPlayer()
    var secondBeep = AVAudioPlayer()
    var backgroundMusic = AVAudioPlayer()
    //var buttonBeep = AVAudioPlayer()
    var buttonBeep2 = AVAudioPlayer()
    var buttonBeep3 = AVAudioPlayer()
    var buttonBeep4 = AVAudioPlayer()
    var buttonBeep5 = AVAudioPlayer()
    var buttonBeep6 = AVAudioPlayer()
    var buttonBeep7 = AVAudioPlayer()
    var buttonBeep8 = AVAudioPlayer()
    var buttonBeep9 = AVAudioPlayer()
    var buttonBeep10 = AVAudioPlayer()
    var buttonBeep11 = AVAudioPlayer()
    var buttonBeep12 = AVAudioPlayer()
    var buttonBeep13 = AVAudioPlayer()
    var buttonBeep14 = AVAudioPlayer()
    var buttonBeep15 = AVAudioPlayer()
    //var secondBeep = AVAudioPlayer()
    var buttonBeep16 = AVAudioPlayer()
    //var backgroundMusic = AVAudioPlayer()
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button11: UIButton!
    @IBOutlet weak var button12: UIButton!
    @IBOutlet weak var button13: UIButton!
    @IBOutlet weak var button14: UIButton!
    @IBOutlet weak var button15: UIButton!
    @IBOutlet weak var button16: UIButton!
    //var score = 0
    var count = 0
    var buttonsLeft = 50
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setButtons()
        
        buttonBeep = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep2 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep3 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep4 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep5 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep6 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep7 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep8 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep9 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep10 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep11 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep12 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep13 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep14 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep15 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        buttonBeep16 = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        secondBeep = self.setupAudioPlayerWithFile("SecondBeep", type:"wav")
        
        time.text = String( stringInterpolationSegment: count) + " sec: " + String(stringInterpolationSegment: buttonsLeft) + " taps "
        
        var countDown = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateSeconds"), userInfo: nil, repeats: true)
        
        buttonBeep = self.setupAudioPlayerWithFile("corckPop", type:"wav")
        secondBeep = self.setupAudioPlayerWithFile("SecondBeep", type:"wav")
        backgroundMusic = self.setupAudioPlayerWithFile("backgroundMusic", type:"mp3")
        
        backgroundMusic.volume = 0.1
        //backgroundMusic.play()
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func playABeep() {
        var switchUp = Int(arc4random_uniform(16))
        switchUp = switchUp + 1
        switch (switchUp) {
        case 1:
            buttonBeep.play()
        case 2:
            buttonBeep2.play()
        case 3:
            buttonBeep3.play()
        case 4:
            buttonBeep4.play()
        case 5:
            buttonBeep5.play()
        case 6:
            buttonBeep6.play()
        case 7:
            buttonBeep7.play()
        case 8:
            buttonBeep8.play()
        case 9:
            buttonBeep9.play()
        case 10:
            buttonBeep10.play()
        case 11:
            buttonBeep11.play()
        case 12:
            buttonBeep12.play()
        case 13:
            buttonBeep13.play()
        case 14:
            buttonBeep14.play()
        case 15:
            buttonBeep15.play()
        case 16:
            buttonBeep16.play()
        default:
            buttonBeep.play()
        }
        
    }
    
    
    func setButtons() {
        setSingleButton(button1)
        setSingleButton(button2)
        setSingleButton(button3)
        setSingleButton(button4)
        setSingleButton(button5)
        setSingleButton(button6)
        setSingleButton(button7)
        setSingleButton(button8)
        setSingleButton(button9)
        setSingleButton(button10)
        setSingleButton(button11)
        setSingleButton(button12)
        setSingleButton(button13)
        setSingleButton(button14)
        setSingleButton(button15)
        setSingleButton(button16)
        if finishedSet <= 0 {
            setButtons()
        }
    }
    
    func setupAudioPlayerWithFile(file:NSString, type:NSString) -> AVAudioPlayer  {
        //1
        var path = NSBundle.mainBundle().pathForResource(file as String, ofType: type as String)
        var url = NSURL.fileURLWithPath(path!)
        
        //2
        var error: NSError?
        
        //3
        var audioPlayer:AVAudioPlayer?
        audioPlayer = AVAudioPlayer(contentsOfURL: url, error: &error)
        
        //4
        return audioPlayer!
    }
    
    func setSingleButton(thisButton: UIButton) {
        var setter = Int(arc4random_uniform(5))
        if setter == 0 {
            thisButton.setImage(redButton, forState: UIControlState())
            thisButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
            if inGame == true {
                finishedSet--
            }
        }
        if setter == 1 {
            
            thisButton.setImage(greenButton, forState: UIControlState())
            thisButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
            if inGame == false {
                finishedSet++
            }
        }
        if setter == 2 {
            thisButton.setImage(clearButton, forState: UIControlState())
            thisButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
            if inGame == true {
                finishedSet--
            }
        }
        if setter == 3 {
            thisButton.setImage(purpleButton, forState: UIControlState())
            thisButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
            if inGame == true {
                finishedSet--
            }
        }
        if setter == 4 {
            thisButton.setImage(yellowButton, forState: UIControlState())
            thisButton.imageView?.contentMode = UIViewContentMode.ScaleAspectFit
            if inGame == true {
                finishedSet--
            }
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBAction func tap16(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button16.currentImage!, button: button16)
    }
    
    @IBAction func tap15(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button15.currentImage!, button: button15)
    }
    
    @IBAction func tap14(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button14.currentImage!, button: button14)
    }
    
    @IBAction func tap13(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button13.currentImage!, button: button13)
    }
    
    @IBAction func tap12(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button12.currentImage!, button: button12)
    }
    
    @IBAction func tap11(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button11.currentImage!, button: button11)
    }
    
    @IBAction func tap10(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button10.currentImage!, button: button10)
    }
    
    @IBAction func tap9(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button9.currentImage!, button: button9)
    }
    
    @IBAction func tap8(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button8.currentImage!, button: button8)
    }
    
    @IBAction func tap7(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button7.currentImage!, button: button7)
    }
    
    @IBAction func tap6(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button6.currentImage!, button: button6)
    }
    
    @IBAction func tap5(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button5.currentImage!, button: button5)
    }
    
    @IBAction func tap4(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button4.currentImage!, button: button4)
    }
    
    @IBAction func tap3(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button3.currentImage!, button: button3)
    }
    
    @IBAction func tap2(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button2.currentImage!, button: button2)
    }
    
    @IBAction func tap1(sender: AnyObject) {
        //buttonBeep.stop()
        checkTap(button1.currentImage!, button: button1)
    }
    
    
    func checkTap (image: UIImage, button: UIButton) {
        if image == greenButton {
            
            buttonBeep.volume = 0.6
            playABeep()
            buttonsLeft = buttonsLeft - 1
            finishedSet--
            button.setImage(clearButton, forState: UIControlState())
            
        } else if image == clearButton {
            
        } else {
            
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            performSegueWithIdentifier("game over 100", sender: self)
        }
        //println()
        time.text = String( stringInterpolationSegment: count) + " sec: " + String( stringInterpolationSegment: buttonsLeft) + " taps"
        if finishedSet <= 0 {
            
            setButtons()
        }
        if buttonsLeft <= 0 {
            performSegueWithIdentifier("game over 100", sender: self)
        }
        
        var switchUp = Int(arc4random_uniform(16))
        switchUp = switchUp + 1
        switch (switchUp) {
        case 1:
            if button1.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button1);
        case 2:
            if button2.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button2);
        case 3:
            if button3.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button3);
        case 4:
            if button4.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button4);
        case 5:
            if button5.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button5);
        case 6:
            if button6.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button6);
        case 7:
            if button7.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button7);
        case 8:
            if button8.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button8);
        case 9:
            if button9.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button9);
        case 10:
            if button10.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button10);
        case 11:
            if button11.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button11);
        case 12:
            if button12.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button12);
        case 13:
            if button13.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button13);
        case 14:
            if button14.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button14);
        case 15:
            if button15.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button15);
        case 16:
            if button16.currentImage == greenButton {
                inGame = true
            }
            setSingleButton(button16);
        default:
           var dkjbvkd = 1
        }
        inGame = false
    }
    
    func gameOver () {
        performSegueWithIdentifier("game over 100", sender: self)
    }
    
    func updateSeconds() {
        //secondBeep.play()
        time.text = String( stringInterpolationSegment: count) + " sec: " + String( stringInterpolationSegment: buttonsLeft) + " taps"
        count = count + 1
        //println("Greens left \(finishedSet)")
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "game over 100") {
            //backgroundMusic.stop()
            var svc = segue.destinationViewController as! ScoreViewController;
            if buttonsLeft <= 0 {
                svc.newTitle = "Task Complete!"
                svc.newScore = "Your score is: " + String( stringInterpolationSegment: count) + " Seconds"
            } else {
                svc.newTitle = "Game Over"
                svc.newScore = "Aww...Try Again"
            }
            NSUserDefaults.standardUserDefaults().integerForKey("lowscore")
            
            //Check if score is higher than NSUserDefaults stored value and change NSUserDefaults stored value if it's true
            if count < NSUserDefaults.standardUserDefaults().integerForKey("lowscore") && buttonsLeft <= 0 {
                NSUserDefaults.standardUserDefaults().setInteger(count, forKey: "lowscore")
                NSUserDefaults.standardUserDefaults().synchronize()
            }
            if NSUserDefaults.standardUserDefaults().integerForKey("lowscore") == 0 && buttonsLeft <= 0 {
                NSUserDefaults.standardUserDefaults().setInteger(count, forKey: "lowscore")
                NSUserDefaults.standardUserDefaults().synchronize()
            }
            svc.highScore = "Your best score is " + String(stringInterpolationSegment: NSUserDefaults.standardUserDefaults().integerForKey("lowscore")) + " seconds"
        }
        
        if (segue.identifier == "countTutorial"){
            var svc = segue.destinationViewController as! NumButtonTutorialViewController;
            svc.buttonsLeft = self.buttonsLeft
            svc.secondsPassed = count
        }
    }

}
