//
//  ViewController.swift
//  Blackjack
//
//  Created by  on 4/24/19.
//  Copyright © 2019 Donahue_Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController

{
    @IBOutlet weak var dealerCard1: UIImageView!
    @IBOutlet weak var dealerCard2: UIImageView!
    @IBOutlet weak var playerCard1: UIImageView!
    @IBOutlet weak var playerCard2: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var deckView: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var image1 = UIImage(named: "1-2C")
    var image2 = UIImage(named: "2-2D")
    var image3 = UIImage(named: "3-2H")
    var image4 = UIImage(named: "4-2S")
    
    var image5 = UIImage(named: "5-3C")
    var image6 = UIImage(named: "6-3D")
    var image7 = UIImage(named: "7-3H")
    var image8 = UIImage(named: "8-3S")
    
    





    
    func roundBegin()
    {
        let rand1 = Int.random(in: 1...2)
        let rand2 = Int.random(in: 1...52)
        let rand3 = Int.random(in: 1...52)
        let rand4 = Int.random(in: 1...52)
        
        rand1 != rand2
        rand2 != rand3
        rand3 != rand4
        rand4 != rand1
        rand1 != rand3
        rand2 != rand4
        
       if rand1 == 1
       {
        playerCard1.image = image1
        }
    }
    @IBAction func RSTapped(_ sender: UIButton)
    {
        roundBegin()
    }
    @IBAction func hitTapped(_ sender: UIButton)
    {
        
    }
    @IBAction func standTapped(_ sender: UIButton)
    {
        
    }
    
}

