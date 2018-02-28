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
    
    /* =============================================== */
    /* ================               ================ */
    /* ================   EXERCICES   ================ */
    /* ================               ================ */
    /* =============================================== */
    
    // MARK: - Exercices
    
    // Fonction qui restaure les variables par défaut
    func setup()
    {
        /* ----------- */
        /* FIXME Setup */
        /* ----------- */
    }
    
    // Fonction associée aux trois boutons "Pierre/Feuille/Ciseaux"
    // Cette fonction permet de décider l'action du joueur.
    @IBAction func makeChoice(_ sender: AnyObject)
    {
        /* ---------------- */
        /* FIXME MakeChoice */
        /* ---------------- */
    }
    
    // Fonction qui définit le résultat en fonction
    // du choix de l'ordinateur et du joueur.
    func finality(PC: Int, CC: Int)
    {
        
        /* -------------- */
        /* FIXME Finality */
        /* -------------- */
    }
}

