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
    
    var image9 = UIImage(named: "9-4C")
    var image10 = UIImage(named: "10-4D")
    var image11 = UIImage(named: "11-4H")
    var image12 = UIImage(named: "12-4S")
    
    var image13 = UIImage(named: "13-5C")
    var image14 = UIImage(named: "14-5D")
    var image15 = UIImage(named: "15-5H")
    var image16 = UIImage(named: "16-5S")
    
    var image17 = UIImage(named: "17-6C")
    var image18 = UIImage(named: "18-6D")
    var image19 = UIImage(named: "19-6H")
    var image20 = UIImage(named: "20-6S")
    
    var image21 = UIImage(named: "21-7C")
    var image22 = UIImage(named: "22-7D")
    var image23 = UIImage(named: "23-7H")
    var image24 = UIImage(named: "24-7S")
    
    var image25 = UIImage(named: "25-8C")
    var image26 = UIImage(named: "26-8D")
    var image27 = UIImage(named: "27-8H")
    var image28 = UIImage(named: "28-8S")
    
    var image29 = UIImage(named: "29-9C")
    var image30 = UIImage(named: "30-9D")
    var image31 = UIImage(named: "31-9H")
    var image32 = UIImage(named: "32-9S")
    
    var image33 = UIImage(named: "33-10C")
    var image34 = UIImage(named: "34-10D")
    var image35 = UIImage(named: "35-10H")
    var image36 = UIImage(named: "36-10S")
    
    var image37 = UIImage(named: "37-AC")
    var image38 = UIImage(named: "38-AD")
    var image39 = UIImage(named: "39-AH")
    var image40 = UIImage(named: "40-AS")
    
    var image41 = UIImage(named: "41-JC")
    var image42 = UIImage(named: "42-JD")
    var image43 = UIImage(named: "43-JH")
    var image44 = UIImage(named: "44-JS")
    
    var image45 = UIImage(named: "45-KC")
    var image46 = UIImage(named: "46-KD")
    var image47 = UIImage(named: "47-KH")
    var image48 = UIImage(named: "48-KS")
    
    var image49 = UIImage(named: "49-QC")
    var image50 = UIImage(named: "50-QD")
    var image51 = UIImage(named: "51-QH")
    var image52 = UIImage(named: "52-QS")
    
    func roundBegin()
    {
        let rand1 = Int.random(in: 1...52)
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
       else if rand1 == 2
        {
            playerCard1.image = image2
        }
       else if rand1 == 3
        {
            playerCard1.image = image3
        }
       else if rand1 == 4
        {
            playerCard1.image = image4
        }
       else if rand1 == 5
        {
            playerCard1.image = image5
        }
       else if rand1 == 6
        {
            playerCard1.image = image6
        }
       else if rand1 == 7
        {
            playerCard1.image = image7
        }
       else if rand1 == 8
        {
            playerCard1.image = image8
        }
       else if rand1 == 9
        {
            playerCard1.image = image9
        }
       else if rand1 == 10
        {
            playerCard1.image = image10
        }
       else if rand1 == 11
        {
            playerCard1.image = image11
        }
        else if rand1 == 12
        {
            playerCard1.image = image12
        }
        else if rand1 == 13
        {
            playerCard1.image = image13
        }
        
        
        if rand2 == 1
        {
            playerCard2.image = image1
        }
        else if rand2 == 2
        {
            playerCard2.image = image2
        }
        else if rand2 == 3
        {
            playerCard2.image = image3
        }
        else if rand2 == 4
        {
            playerCard2.image = image4
        }
        else if rand2 == 5
        {
            playerCard2.image = image5
        }
        else if rand2 == 6
        {
            playerCard2.image = image6
        }
        else if rand2 == 7
        {
            playerCard2.image = image7
        }
        else if rand2 == 8
        {
            playerCard2.image = image8
        }
        else if rand2 == 9
        {
            playerCard2.image = image9
        }
        else if rand2 == 10
        {
            playerCard2.image = image10
        }
        else if rand2 == 11
        {
            playerCard2.image = image11
        }
        else if rand2 == 12
        {
            playerCard2.image = image12
        }
        else if rand2 == 13
        {
            playerCard2.image = image13
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

