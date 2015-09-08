//
//  MainMenuViewController.swift
//  Copic
//
//  Created by Srividhya Gopalan on 8/7/15.
//  Copyright (c) 2015 Srividhya Gopalan. All rights reserved.
//

import UIKit
import Parse

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var firstTimeLabel: UILabel!
    @IBOutlet weak var mainMenuLabel: UILabel!
    var tField: UITextField!
    var username: String!
    let pinkColor = UIColor(red: 229, green: 14, blue: 72, alpha: 1)
    var nameList: [PFObject]!
    //var taken: Bool = true
    var tried = false
    
    var usernameString = "2freeFarer, Activetely, Actixtoni, Adunoff,Aeporter,Aericape,AngelicGame,AnnSunny,Apoporis,Aprilyate,Arcambar,Architab,Arterag,Articler,Articlespa,Aspergondat,Assidme,Avolett,Beaterty,BeeTrippinChilled,Beezener,BelgairBicur,Billionaire,Birdealnet,Bizarreedge,Blabebonee,Boardeast,Bolatica,Boltipplan,BookNarrative,szBoomnime,BradelAnn,Brainyelpa,Buddielder,Buddyanet,Byhoolog,Caraviannel,Carpulstaci,Carteriaso,CatCover,Cenzende,ChampDarkGot,Chensine,Chiaritymd,ChosenAir,Chronotalk,Cinvedbu,ClawMama,Clicklent,ComfyListSlip,Comfylksp,Comminded,CookieLike,Cottonsemi,Countryboi,Cowfish,Crayondgin,Crescentac,Cronlier,CyberTeam,Cynexplas,CzarAnhartChiari,Dailysepa,Dataworfi,Dipitypegb,DoubleLessCute,Duposion,EasyUpper,Eligong,Ellarpe,Endosscor,Entmedin,Exoticonal,Eyeonixiare,FaithDailies,Featuredya,Fedexis,Filtello,ForbLovesStories,Fourwayer,Foxintelo,FreeRappa,Funnytran,Garnettermo,Gazettech,Gemsbau,Geniuseric,GlorySupreme,Gooblearyt,GossipTwitter,Goteehairst,GreenMjBull,Grimbrekin,Guitarist,Guruderi,Gutsyslugua,Hannahount,Headlines,HellBurke,HelloLunatic,Hertneti,Hinshance,Hipbombar,HiSly,Ifererie,Ineedgentia,Inspireaken,Intersea,Inventench,Jemadiz,Jemmuniz,Jinjayspa,Jourdatab,Jyskewo,KenkaFlavored,Knightondi,Lectanic,Lineryco,LinkMansXmc,LittleProdigy,Livenet,LogicEdgy,LukeNinja,LummoRomantic,MagicDramaKhad,Manifercall,Manyo,Mareenda,Marknion,MatrixMaxiJide,Matzoom,Maxioniano,Mdoggererwa,MellowWordMs,MelSosa,Millity,Misseleoro,Moarkim,MoffMc,Monningeris,Montespri,Mostech,Motoriermi,Nanodela,Narrative,Newsminger,Nopsammo,Noteptsys,Nothingtock,Nozyeditor,Nozymergne,NumCanyons,Objecardy,Ocwenam,Otolifi,Overwin,Padulger,PanetEver,PatCuddly,Percakers,PersonHenry,Phobicovid,Piercefair,Pipkinspi,Pleasanthu,Pleclati,Pointia,Potbois,Pottaffme,Preprole,Prescact,Pressmana,Prosonill,Psychakawiz,PuppyJuz,Purfectra,PurplePatty,Qedisti,Queyensoft,Rawlexingdo,Reallynner,Redwiftwagg,Reigann,Remanter,Revande,Rockels,Rocksanli,Roservers,Rosesicip,Rumbeamee,Sabania,Sabenexa,Saberroga,Sacbasso,Sandans,Sankbook,SanTaraGrand,Scherboa,Scorpionn,2hoterlose,AboveLaxr,Agonesui,Airbugton,Alphadder,Altnerwo,Aminfone,AngelSmug,AngelWeareA,Penguin,Announcergy,Aptiteco,Artpriat,Atstars,AutPuff,Avianaci,Backhear,BeautyBirdPark,Beavella,BingSeen,Blintion,BoardAirZena,Bollant,BomberDav,Bomberlogy,Bookient,Boostreca,Born2Solid,Botanetak,BoxDiagonal,Brackliti,Breezenost,BriefingWhite,Brilliant,BroadwaySister,BuffyMaxi,BunnyDogg,Casechure,CasualTy,Celector,Celiental,ChampionDown,Charmsbuko,Chebeakai,ChiriNotice,Chirpoite,ChoneRpg,Comanord,Coneural,Consgeno,CookySpider,Cormode,Curiousta,stouros,DailiesRoyal,Dasyman,DeanWaveSand,Depiconal,DictatorAlone,Digipps,DigyCuteJung,Ditinged,Doggergouv,Dolieffl,Dongaings,DownMcInspire,Dramatrel,Dravenesch,DreamViking,DreamyBreaking,Dubexpe,Dungeneoc,Eachetab,EatLaoFate,EditorLead,Esmindel,ExtraMajere,FallenHear,Famoustion,FarWordsInlove,FashionDonald,Fasttra,FatePoshy,Featuredic,Fighterlabs,Flamessodo,ForbRip,FreshBriefing,FunTwinkle,Gazenast,Geckorrie,Genaegene,Genometen,Glaronie,Godfallerma,Goodecapie,Gottasakr,Greencytoty,Grizzut,Gurlyherysa,HeartBe,HelpWas,Higheal,Hilloft,Hipuristors,Hoofitec,Hottroupri,Hulkmating,Hydravel,IncaSnoopyPlot,Inestane,Infobinte,Inspirelidn,InspiringIss,IntcatFarer,Interviewer,Intrianin,InvaderWorman,InventShat,JadenLawRainbow,Janssmating,Javarauset,JeansTactic,Jiggyrunnes,Journaltemp,Kanente,Kiddorflo,Kinovalori,KittyNephew,Kittyredi,Koncepton,Laseattr,Latinaviti,LaughGooble,LedgerIffy,Lightlingta,LnkSpiderIama,Listgenabo,LocalPin,LolBrilliant,Lollysimark,Loranna,Lorenow,Loverwebr,Madelbouch,MagicDonald,ManTeenzWzy,Matrixlinq,MaxKnight,MdoggBadBubble,MegsGorgeous,MessageTroik,Mewburramho,MidnightCrescent,MisterLaoIneed,Monserle,Monsonsmons,Myherobble,NanSpot,Nearlynnin,Neolitaff,Networketcy,Nicologic,Nipisciplus,Noptommu,Nosseder,OlympicCheerup,OneExclusive,Orrissver,Pagustag,Papartec,ParisFantasy,Pattylenwar,Paystrana,PerfectString,Pietemsha,Pigsburg,Pirateffec,Platinds,Poettagenu,Prankwallet,Precisett,PrestigeJava,Protemati,Proventr,Puffelleta,Puiggent,PurpleTwinkle,Radiantir,RadioSummer,Raetschka,RatChari,RatSolomon,RedGlimmer,RelaxMoto,Reuneve,RocketTracker,Rodyneda,Roecherni,RonzJeans,Rosailhane"
    func populateArray(users:Int, highest: Int) {
        
        for var t = 0; t < Int(Double(users)*(0.34)); t++ {
            
        }
    }
    @IBOutlet weak var areaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //areaLabel.text = NSUserDefaults.standardUserDefaults().stringForKey("appName")
        //println(NSUserDefaults.standardUserDefaults().stringForKey("appName"))
                // Do any additional setup after loading the view.
                var firstYes = isAppAlreadyLaunchedOnce()
        if firstYes == false {
            //println("inside")
            performSegueWithIdentifier("next", sender: self)
        }
        var nameQuery = PFQuery(className: "Names")
        nameQuery.findObjectsInBackgroundWithBlock {(result: [AnyObject]?, error: NSError?) -> Void in
            if error != nil {
                //println("error")
            }
            else {
                self.nameList = result as! [PFObject]
            }
        }
        
    }
    
    func checkName() {
        var count = 0
        //println(nameList.count)
        tField.textColor = UIColor.blackColor()
        if tField.text == "" {
            tField.textColor = UIColor.redColor()
        }
        else {
            
            for var i = 0; i < nameList.count; i++ {
                //println(nameList[i]["Username"] as! String + tField.text)
                if nameList[i]["Username"] as! String == tField.text {
                    tField.textColor = UIColor.redColor()
                    break
                }
            }
        }
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(true)
        if NSUserDefaults.standardUserDefaults().stringForKey("appName") == nil {
            makeUsername()
        }

    }
    
    func makeUsername() {
        let myAlertControler = UIAlertController(title: "Add a Username!", message: "This is your name on the Leaderboards!", preferredStyle: .Alert)
        //            let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .Cancel) { action -> Void in
        //                //Do the stuff if they are like wait I want a password
        //            }
        
        myAlertControler.addTextFieldWithConfigurationHandler { textField -> Void in
            //println("generating the TextField")
            textField.placeholder = "Enter a username"
            if self.tried == true {
                textField.placeholder = "That username is taken :("
            }
            self.tField = textField
            self.tField.addTarget(self, action:"checkName", forControlEvents: UIControlEvents.EditingChanged)
        }
        
        let nextAction: UIAlertAction = UIAlertAction(title: "Done", style: .Default) { action -> Void in
            //Do some other stuff
            //println("They picked the next option")
            //TODO: only allow this option to be available if someone types into the text field
            //Maybe not the best idea to prevent password...
            //println(self.tField.text)
            self.username = self.tField.text
            //println(self.username)
            
            if self.tField.textColor == UIColor.redColor() {
                self.tried = true
                self.makeUsername()
            } else {
                NSUserDefaults.standardUserDefaults().setValue(self.username, forKey: "appName")
                NSUserDefaults.standardUserDefaults().synchronize()
                var newPost = PFObject (className:"Names")
                newPost["Username"] = NSUserDefaults.standardUserDefaults().stringForKey("appName")
                newPost.saveInBackgroundWithBlock {
                    (success: Bool, error: NSError?) -> Void in
                    if (success) {
                        //println("activity saved")
                    } else {
                        //println("activity not saved")
                    }
                    
                }
            }
            //self.createGroup()
            //self.performSegueWithIdentifier("CreatedGroupToGroupsSegue", sender: nil)
        }
        
        
        //myAlertControler.addAction(cancelAction)
        myAlertControler.addAction(nextAction)
        
        
        
        self.presentViewController(myAlertControler, animated: true, completion: nil)

    }

    func isAppAlreadyLaunchedOnce()->Bool{
        let defaults = NSUserDefaults.standardUserDefaults()
        
        
        if let isAppAlreadyLaunchedOnce = defaults.stringForKey("isAppAlreadyLaunchedOnce"){
            //mainMenuLabel.text = "Not First Time"
            //println("App already launched")
            return true
        }else{
            defaults.setBool(true, forKey: "isAppAlreadyLaunchedOnce")
            //println("App launched first time")
            firstTimeLabel.text = "First time? Click there ->"
            firstTimeLabel.backgroundColor = pinkColor

            //NSUserDefaults.standardUserDefaults().setValue(username, forKey: "appName")
            //mainMenuLabel.text = "First Time"
            //println(NSUserDefaults.standardUserDefaults().stringForKey("appName"))
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
