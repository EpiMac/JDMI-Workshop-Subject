//
//  ViewController.swift
//  RPS
//
//  Created by Alexandre Toubiana on 16/02/2016.
//  Copyright © 2016 Alexandre Toubiana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ResultLabel: UILabel!
    @IBOutlet weak var computerChoiceLabel: UILabel!
    var playerChoice = -1
    var computerChoice = -1
    
    @IBOutlet weak var ciseauButton: UIButton!
    @IBOutlet weak var papierButton: UIButton!
    @IBOutlet weak var pierreButton: UIButton!
    
    @IBAction func makeChoice(sender: AnyObject) {
        switch (sender as! UIButton){
        case pierreButton:
            print("Pierre")
            playerChoice = 0
        case papierButton:
            print("Papier")
            playerChoice = 1
        case ciseauButton:
            print("Ciseau")
            playerChoice = 2
        default:
            print("Nothing")
        }
        
        computerChoice = computer()
        finality(playerChoice, CC: computerChoice)
    }
    
    func finality(PC: Int, CC: Int){
        if ((PC == 0 && CC == 2)||(PC == 1 && CC == 0)||(PC == 2 && CC == 1)){
            print("Gagné")
            ResultLabel.text = "Gagné"
        }
        else {
            if ((PC == 0 && CC == 1)||(PC == 1 && CC == 2)||(PC == 2 && CC == 0)){
                print("Perdu")
                ResultLabel.text = "Perdu"
            }
            else {
                print ("Égalité")
                ResultLabel.text = "Égalité"
            }
        }
        
        switch CC {
        case 0:
            computerChoiceLabel.text = "Votre adversaire a joué : la pierre"
        case 1:
            computerChoiceLabel.text = "Votre adversaire a joué : la feuille"
        case 2:
            computerChoiceLabel.text = "Votre adversaire a joué : le ciseau"
        default:
            computerChoiceLabel.text = ""
        }
    }
    
    func setup(){
        playerChoice = -1
        computerChoice = -1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func computer()->Int {
        var choice = -1
        let randomChoice = Int(arc4random_uniform(3))
        switch randomChoice{
        case 0:
            print("Pierre")
            choice = 0
        case 1:
            print("Papier")
            choice = 1
        case 2:
            print("Ciseau")
            choice = 2
        default:
            print("Nothing")
        }
        return choice
    }
}

