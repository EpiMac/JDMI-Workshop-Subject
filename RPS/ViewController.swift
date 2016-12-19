//
//  ViewController.swift
//  RPS
//  Copyright © 2016 Alexandre Toubiana. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
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
    @IBAction func recommencerButton(_ sender: AnyObject)
    {
        // Appel à la fonction setup
        setup()
    }
    
    // Fonction qui restaure les variables par default
    func setup()
    {
        /* ----------- */
        /* FIXME Setup */
        /* ----------- */
    }

    // Fonction qui choisit un nombre aléatoire qui peut être 0, 1 ou 2.
    // Cette fonction permet donc de simuler le choix de l'adversaire.
    func computer()->Int
    {
        return Int(arc4random_uniform(3))
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
    func finality(_ PC: Int, CC: Int)
    {
        /* -------------- */
        /* FIXME finality */
        /* -------------- */
    }
    
/* ============================================== */
/*               DO NOT TOUCH IT !                */
/* ============================================== */
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

