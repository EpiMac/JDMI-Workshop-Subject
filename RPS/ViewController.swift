//
//  ViewController.swift
//  RPS
//  Copyright © 2016 EpiMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Variables globales.
    var playerChoice = -1
    var computerChoice = -1
    var scorePlayer = 0
    var scoreComputer = 0
    
    // Liens avec les objets du story board.
    // Scores
    @IBOutlet weak var scorePlayerLabel: UILabel!
    @IBOutlet weak var scoreComputerLabel: UILabel!
    // Boutons
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    // Resultat
    @IBOutlet weak var resultLabel: UILabel!
    // Choix de l'adversaire
    @IBOutlet weak var computerChoiceImage: UIImageView!

    // Fonction appliquée au bouton "recommencer"
    @IBAction func recommencerButton(sender: AnyObject)
    {
        // Appel à la fonction setup
        setup()
    }
    
    // Fonction qui restaure les variables par default
    func setup()
    {
        playerChoice = -1
        computerChoice = -1
        computerChoiceImage.image = nil
        resultLabel.text = "VS"
        scorePlayer = 0
        scoreComputer = 0
        scoreComputerLabel.text = "0"
        scorePlayerLabel.text = "0"
    }
    
    // Fonction qui choisit un nombre aléatoire qui peut être 0, 1 ou 2.
    // Cette fonction permet donc de simuler le choix de l'adversaire.
    func computer()->Int
    {
        return Int(arc4random_uniform(3))
    }
    
    // Fonction associée aux trois boutons "Pierre/Feuille/Ciseaux"
    // Cette fonction permet de décider l'action du joueur.
    @IBAction func makeChoice(sender: AnyObject)
    {
        playerChoice = 1;
        computerChoice = computer()
        finality(playerChoice, CC: computerChoice)
    }
    
    // Fonction qui définit le résultat en fonction
    // du choix de l'ordinateur et du joueur.
    func finality(PC: Int, CC: Int)
    {
        switch CC
        {
        case 0:
            computerChoiceImage.image = UIImage(named: "Rock")
        case 1:
            computerChoiceImage.image = UIImage(named: "Paper")
        case 2:
            computerChoiceImage.image = UIImage(named: "Scissors")
        default:
            computerChoiceImage.image = nil
        }
        if (PC == CC)
        {
            resultLabel.text = "Égalité"
        }
        else if ((PC == 0 && CC == 2)||(PC == 1 && CC == 0)||(PC == 2 && CC == 1))
        {
            resultLabel.text = "Gagné"
            scorePlayerLabel.text = "\(scorePlayer++)"
            
        }
        else
        {
            resultLabel.text = "Perdu"
            scoreComputerLabel.text = "\(scoreComputer++)"
        }
    }
    
    /* ============================================== */
    /*               DO NOT TOUCH IT !                */
    /* ============================================== */
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

