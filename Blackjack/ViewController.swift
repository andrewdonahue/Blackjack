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
    var cards: [Card] = [Card]()
    
    override func viewDidLoad()
    {
        //Hiding "Hit" ImageViews
        super.viewDidLoad()
        playerCard3.isHidden = true
        playerCard4.isHidden = true
        playerCard5.isHidden = true
    
        //Numbering Cards
        cards = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15, card16, card17, card18, card19, card20, card21, card22, card23, card24, card25, card26, card27, card28, card29, card30, card31, card32, card33, card34, card35, card36, card37, card38, card39, card40, card41, card42, card43, card44, card45, card46, card47, card48, card49, card50, card51, card52] as! [Card]
    }
    
    //2C, 2D, 2H, 2S
    let card1 = Card(image: image1!, v: 2)
    let card2 = Card(image: image2!, v: 2)
    let card3 = Card(image: image3!, v: 2)
    let card4 = Card(image: image4!, v: 2)
    
    //3C, 3D, 3H, 3S
    let card5 = Card(image: image5!, v: 3)
    let card6 = Card(image: image6!, v: 3)
    let card7 = Card(image: image7!, v: 3)
    let card8 = Card(image: image8!, v: 3)
    
    //4C, 4D, 4H, 4S
    let card9 = Card(image: image9!, v: 4)
    let card10 = Card(image: image10!, v: 4)
    let card11 = Card(image: image11!, v: 4)
    let card12 = Card(image: image12!, v: 4)
    
    //5C, 5D, 5H, 5S
    let card13 = Card(image: image13!, v: 5)
    let card14 = Card(image: image14!, v: 5)
    let card15 = Card(image: image15!, v: 5)
    let card16 = Card(image: image16!, v: 5)
    
    //6C, 6D, 6H, 6S
    let card17 = Card(image: image17!, v: 6)
    let card18 = Card(image: image18!, v: 6)
    let card19 = Card(image: image19!, v: 6)
    let card20 = Card(image: image20!, v: 6)
    
    //7C, 7D, 7H, 7S
    let card21 = Card(image: image21!, v: 7)
    let card22 = Card(image: image22!, v: 7)
    let card23 = Card(image: image23!, v: 7)
    let card24 = Card(image: image24!, v: 7)
    
    //8C, 8D, 8H, 8S
    let card25 = Card(image: image25!, v: 8)
    let card26 = Card(image: image26!, v: 8)
    let card27 = Card(image: image27!, v: 8)
    let card28 = Card(image: image28!, v: 8)
    
    //9C, 9D, 9H, 9S
    let card29 = Card(image: image29!, v: 9)
    let card30 = Card(image: image30!, v: 9)
    let card31 = Card(image: image31!, v: 9)
    let card32 = Card(image: image32!, v: 9)
    
    //10C, 10D, 10H, 10S
    let card33 = Card(image: image33!, v: 10)
    let card34 = Card(image: image34!, v: 10)
    let card35 = Card(image: image35!, v:10)
    let card36 = Card(image: image36!, v: 10)
    
    //Aces with value of 1...
    let card37_1 = Card(image: image37!, v: 1)
    let card38_1 = Card(image: image38!, v: 1)
    let card39_1 = Card(image: image39!, v: 1)
    let card40_1 = Card(image: image40!, v: 1)
    
    //Aces with value of 11...
    let card37_11 = Card(image: image37!, v: 11)
    let card38_11 = Card(image: image38!, v: 11)
    let card39_11 = Card(image: image39!, v: 11)
    let card40_11 = Card(image: image40!, v: 11)
    
    //JC, JD, JH, JS
    let card41 = Card(image: image41!, v: 10)
    let card42 = Card(image: image42!, v: 10)
    let card43 = Card(image: image43!, v: 10)
    let card44 = Card(image: image44!, v: 10)
    
    //KC, KD, KH, KS
    let card45 = Card(image: image45!, v: 10)
    let card46 = Card(image: image46!, v: 10)
    let card47 = Card(image: image47!, v: 10)
    let card48 = Card(image: image48!, v: 10)
    
    //QC, QD, QH, QS
    let card49 = Card(image: image49!, v: 10)
    let card50 = Card(image: image50!, v: 10)
    let card51 = Card(image: image51!, v: 10)
    let card52 = Card(image: image52!, v: 10)

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
        counter = 0
        
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
        else if playerCard5.isHidden == false
        {
            self.playerCard5.isHidden = true
            playerCard5.image = nil
        }
        playerCard3.isHidden = true
        playerCard4.isHidden = true
        playerCard5.isHidden = true
        
        if cards.count < 8
        {
    //
        }
        cards.shuffle()
        playerCard1.image = cards.first?.image
        cards.remove(at: 0)
        playerCard2.image = cards.first?.image
        cards.remove(at: 0)
        dealerCard1.image = cards.first?.image
        cards.remove(at: 0)
        dealerCard2.image = cards.first?.image
        }
    
    //"Round Start" button tapped...
    @IBAction func RSTapped(_ sender: UIButton)
    {
        roundBegin()
    }
    
    //"Hit" button tapped...
    var counter = 0
    
    @IBAction func hitTapped(_ sender: UIButton)
    {
      counter = counter + 1
        
      if counter == 1
        {
        self.playerCard2.layer.zPosition = 5
        self.playerCard3.layer.zPosition = 6
        self.playerCard2.frame.origin.x -= 65
        playerCard3.isHidden = false
        cards.remove(at: 0)
        playerCard3.image = cards.first?.image
        }
        
      else if counter == 2
        {
        self.playerCard4.layer.zPosition = 7
        cards.remove(at: 0)
        playerCard4.image = cards.first?.image
        playerCard4.isHidden = false
        }
        
      else if counter == 3
        {
        self.playerCard5.layer.zPosition = 8
        cards.remove(at: 0)
        playerCard5.image = cards.first?.image
        playerCard5.isHidden = false
        }
        
     else
        {
            //Trigger Alert
            let newAlert = UIAlertController(title: "Error", message: "Maximum number of hits has been reached.", preferredStyle: .alert)

            let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                newAlert.dismiss(animated: true, completion: nil)
            })

            newAlert.addAction(ok)

            present(newAlert, animated: true, completion: nil)
        }
    }
    
    //"Stand" button tapped...
    @IBAction func standTapped(_ sender: UIButton)
    {
        checkForWinner()
    }
    
    //find who is winning
    func checkForWinner()
    {
        let playerHand =

        let dealerHand = dealerCard1.tag + dealerCard2.tag
        if playerHand > 21
        {
            let newAlert = UIAlertController(title: "You Lose!", message: "Better luck next time.", preferredStyle: .alert)

            let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                newAlert.dismiss(animated: true, completion: nil)
            })

            newAlert.addAction(ok)

            present(newAlert, animated: true, completion: nil)
        }
    
        else if  playerHand == 21 && dealerHand != 21
        {
            let newAlert = UIAlertController(title: "You Win!", message: "BlackJack!", preferredStyle: .alert)

            let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                newAlert.dismiss(animated: true, completion: nil)
            })

            newAlert.addAction(ok)

            present(newAlert, animated: true, completion: nil)
        }
    
        else if playerHand < 21 && dealerHand < 21
        {
            let playerScore = 21 - (playerCard1.tag + playerCard2.tag + playerCard3.tag + playerCard4.tag + playerCard5.tag)
            let dealerScore = 21 - (dealerCard1.tag + dealerCard2.tag)

            if playerScore > dealerScore
            {
                let newAlert = UIAlertController(title: "You Lose!", message: "Better luck next time.", preferredStyle: .alert)

                let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                    newAlert.dismiss(animated: true, completion: nil)
                })

                newAlert.addAction(ok)

                present(newAlert, animated: true, completion: nil)
            }
    
            else if playerScore == dealerScore
            {
                let newAlert = UIAlertController(title: "You Tied!", message: "Better luck next time.", preferredStyle: .alert)

                let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                    newAlert.dismiss(animated: true, completion: nil)
                })

                newAlert.addAction(ok)

                present(newAlert, animated: true, completion: nil)
            }
    
            else if playerScore < dealerScore
            {
                let newAlert = UIAlertController(title: "You Win!", message: "BlackJack!", preferredStyle: .alert)

                let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                    newAlert.dismiss(animated: true, completion: nil)
                })

                newAlert.addAction(ok)

                present(newAlert, animated: true, completion: nil)
            }
        }
    }
}
