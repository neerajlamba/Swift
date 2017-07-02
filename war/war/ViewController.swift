//
//  ViewController.swift
//  war
//
//  Created by Neeraj Lamba on 5/18/17.
//  Copyright © 2017 Neeraj Lamba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
   
    
    // constant array defined containing name of cards
    
    let cardNames = ["ace","card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","king"]
    
    var leftscore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func DealButton(_ sender: Any) {
        
        //Randomized left number from 0 to 12
        
        let leftnumber : Int = Int(arc4random_uniform(13))
        
        //Randomized right number from 0 to 12
        
        let rightnumber : Int = Int(arc4random_uniform(13))
        
        //set right image
        rightImageView.image = UIImage(named: cardNames[leftnumber])
        
        //set left image
        leftImageView.image = UIImage(named: cardNames[rightnumber])
        
        if leftnumber > rightnumber {
            //left card wins
            
                leftscore += 1
                leftScoreLabel.text = String(leftscore)
        }
        else if leftnumber == rightnumber {
            //its a tie
        }
        else {
            rightscore += 1
            rightScoreLabel.text = String(rightscore)
        }
    }
}

