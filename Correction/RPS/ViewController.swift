//
//  ViewController.swift
//  RPS
//  Copyright © 2018 EpiMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    // MARK: - Variables
    
    var playerChoice = -1
    var computerChoice = -1
    var scorePlayer = 0
    var scoreComputer = 0
    var constants = Constants()
    
    // MARK: - Outlets (Liens avec les objets du storyboard)
    
    // Scores
    @IBOutlet weak var scorePlayerLabel: UILabel!
    @IBOutlet weak var scoreComputerLabel: UILabel!
    
    // Boutons
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    // Resultat
    @IBOutlet weak var resultLabel: UILabel!
    
    // Choix de l'adversaire
    @IBOutlet weak var computerChoiceLabel: UILabel!
    
    // Fonction appliquée au bouton "recommencer"
    @IBAction func recommencerButton(_ sender: AnyObject)
    {
        // Appel à la fonction setup
        setup()
    }
    
    // MARK: - Helpers

    // Fonction qui choisit un nombre aléatoire qui peut être 0, 1 ou 2.
    // Cette fonction permet donc de simuler le choix de l'adversaire.
    func computer()->Int
    {
        return Int(arc4random_uniform(3))
    }
    
    /* ================================================ */
    /* ================                ================ */
    /* ================   CORRECTION   ================ */
    /* ================                ================ */
    /* ================================================ */
    
    // MARK: - Exercices
    
    // Fonction qui restaure les variables par défaut
    func setup()
    {
        playerChoice = -1
        computerChoice = -1
        computerChoiceLabel.text = constants.opponent
        resultLabel.text = "VS"
        scorePlayer = 0
        scoreComputer = 0
        scoreComputerLabel.text = "0"
        scorePlayerLabel.text = "0"
    }
    
    // Fonction associée aux trois boutons "Pierre/Feuille/Ciseaux"
    // Cette fonction permet de décider l'action du joueur.
    @IBAction func makeChoice(_ sender: AnyObject)
    {
        //Switch :
        switch (sender as! UIButton)
        {
        case rockButton:
            playerChoice = 0
        case paperButton:
            playerChoice = 1
        case scissorsButton:
            playerChoice = 2
        default:
            playerChoice = -1
        }
        
        //If :
        
        //        if (sender as! UIButton == rockButton)
        //        {
        //            playerChoice = 0
        //        }
        //        else if (sender as! UIButton == paperButton)
        //        {
        //            playerChoice = 1
        //        }
        //        else if (sender as! UIButton == scissorsButton)
        //        {
        //            playerChoice = 2
        //        }
        //        else
        //        {
        //            playerChoice = -1
        //        }
        
        computerChoice = computer()
        finality(PC: playerChoice, CC: computerChoice)
    }
    
    // Fonction qui définit le résultat en fonction
    // du choix de l'ordinateur et du joueur.
    func finality(PC: Int, CC: Int)
    {
        //Switch :
        
        switch CC
        {
        case 0:
            computerChoiceLabel.text = constants.rock
        case 1:
            computerChoiceLabel.text = constants.paper
        case 2:
            computerChoiceLabel.text = constants.scissors
        default:
            computerChoiceLabel.text = constants.opponent
        }
        
        //If :
        
        //        if (CC == 0)
        //        {
        //            computerChoiceLabel.text = constants.rock
        //        }
        //        else if (CC == 1)
        //        {
        //            computerChoiceLabel.text = constants.paper
        //
        //        }
        //        else if (CC == 2)
        //        {
        //            computerChoiceLabel.text = constants.scissors
        //
        //        }
        //        else
        //        {
        //            computerChoiceLabel.text = constants.opponent
        //        }
        
        if (PC == CC)
        {
            resultLabel.text = "Égalité"
        }
        else if ((PC == 0 && CC == 2)||(PC == 1 && CC == 0)||(PC == 2 && CC == 1))
        {
            resultLabel.text = "Gagné"
            scorePlayer+=1
            scorePlayerLabel.text = "\(scorePlayer)"
        }
        else
        {
            resultLabel.text = "Perdu"
            scoreComputer+=1
            scoreComputerLabel.text = "\(scoreComputer)"
        }
    }
}

