//
//  ViewController.swift
//  RPS
//
//  Created by Alexandre Toubiana on 16/02/2016.
//  Copyright © 2016 Alexandre Toubiana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isClicked = false
    var playerChoice = -1
    var computerChoice = -1
    
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var computerChoiceImage: UIImageView!

    @IBAction func recommencerButton(sender: AnyObject) {
        setup()
    }
    
    @IBAction func makeChoice(sender: AnyObject) {
        if (isClicked == false){
            switch (sender as! UIButton){
            case rockButton:
                playerChoice = 0
            case paperButton:
                playerChoice = 1
            case scissorsButton:
                playerChoice = 2
            default:
                playerChoice = -1
            }
            computerChoice = computer()
            finality(playerChoice, CC: computerChoice)
            isClicked = true
        }
    }
    
    func setup(){
        playerChoice = -1
        computerChoice = -1
        computerChoiceImage.image = nil
        resultLabel.text = "VS"
        isClicked = false
    }
    
    func finality(PC: Int, CC: Int){
        if (PC == CC){
            resultLabel.text = "Égalité"
        }
        else if ((PC == 0 && CC == 2)||(PC == 1 && CC == 0)||(PC == 2 && CC == 1)){
            resultLabel.text = "Gagné"
        }
        else {
            resultLabel.text = "Perdu"
        }
        switch CC {
        case 0:
            computerChoiceImage.image = UIImage(named: "Rock")
        case 1:
            computerChoiceImage.image = UIImage(named: "Paper")
        case 2:
            computerChoiceImage.image = UIImage(named: "Scissors")
        default:
            computerChoiceImage.image = nil
        }
    }
    
    func computer()->Int {
        return Int(arc4random_uniform(3))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

