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
    @IBOutlet weak var playerCard3: UIImageView!
    @IBOutlet weak var playerCard4: UIImageView!
    @IBOutlet weak var playerCard5: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    var cards: [UIImage] = [UIImage]()
    
    override func viewDidLoad()
    {
        //Hiding "Hit" ImageViews
        super.viewDidLoad()
        playerCard3.isHidden = true
        playerCard4.isHidden = true
        playerCard5.isHidden = true

        //Numbering Cards
        cards = [image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12, image13, image14, image15, image16, image17, image18, image19, image20, image21, image22, image23, image24, image25, image26, image27, image28, image29, image30, image31, image32, image33, image34, image35, image36, image37, image38, image39, image40, image41, image42, image43, image44, image45, image46, image47, image48, image49, image50, image51, image52] as! [UIImage]
        
       
    }
    //Making image assets variables
    var image1 = UIImage(named: "1-2C")
    var image2 = UIImage(named: "2-2D")
    var image3 = UIImage(named: "3-2S")
    var image4 = UIImage(named: "4-2H")
    
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
    
    //Func to shuffle cards at round start
    func roundBegin()
    {
        if playerCard3.isHidden == false
        {
            self.playerCard3.isHidden = true
            playerCard3.image = nil
            self.playerCard2.frame.origin.x += 65
        }
            
        else if playerCard4.isHidden == false
        {
            self.playerCard4.isHidden = true
            playerCard4.image = nil
        }

        if cards.count < 8
        {
    //Repopulate deck...
        }
        cards.shuffle()
        playerCard1.image = cards.first
        cards.remove(at: 0)
        playerCard2.image = cards.first
        cards.remove(at: 0)
        dealerCard1.image = cards.first
        cards.remove(at: 0)
        dealerCard2.image = cards.first
        }
    
    //"Round Start" button tapped...
    @IBAction func RSTapped(_ sender: UIButton)
    {
        roundBegin()
    }
    
    //"Hit" button tapped...
    @IBAction func hitTapped(_ sender: UIButton)
    {
      if playerCard3.isHidden == true
        {
        self.playerCard2.layer.zPosition = 5
        self.playerCard3.layer.zPosition = 6
        self.playerCard2.frame.origin.x -= 65
        playerCard3.isHidden = false
        cards.remove(at: 0)
        playerCard3.image = cards.first
        }
        
      else if playerCard3.isHidden == false
        {
        self.playerCard4.layer.zPosition = 7
        cards.remove(at: 0)
        playerCard4.image = cards.first
        playerCard4.isHidden = false
        }
        
      else if playerCard4.isHidden == false
        {
        self.playerCard5.layer.zPosition = 8
        cards.remove(at: 0)
        playerCard5.image = cards.first
        playerCard5.isHidden = false
        }
        
     else
        {
        self.scoreLabel.textColor = UIColor.green
        }
    }
    
    //"Stand" button tapped...
    @IBAction func standTapped(_ sender: UIButton)
    {
        
    }
    
}

