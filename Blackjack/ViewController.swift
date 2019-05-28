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
    //Outlets:
    @IBOutlet weak var dealerCard1: UIImageView!
    @IBOutlet weak var dealerCard2: UIImageView!
    @IBOutlet weak var dealerCard3: UIImageView!
    @IBOutlet weak var dealerCard4: UIImageView!
    @IBOutlet weak var dealerCoverCard: UIImageView!
    @IBOutlet weak var playerCard1: UIImageView!
    @IBOutlet weak var playerCard2: UIImageView!
    @IBOutlet weak var playerCard3: UIImageView!
    @IBOutlet weak var playerCard4: UIImageView!
    @IBOutlet weak var playerCard5: UIImageView!
    @IBOutlet weak var dealerValueLabel: UILabel!
    @IBOutlet weak var playerValueLabel: UILabel!
    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var standButton: UIButton!
    @IBOutlet weak var currentBetLabel: UILabel!
    @IBOutlet weak var yourBankLabel: UILabel!
    @IBOutlet weak var fiveChip: UIButton!
    @IBOutlet weak var tenChip: UIButton!
    @IBOutlet weak var twentyFiveChip: UIButton!
    @IBOutlet weak var oneHundredChip: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    //Variables:
    var cards: [Card] = [Card]()
    var playerCards: [Card] = [Card]()
    var dealerCards: [Card] = [Card]()
    var playerHand = 0 {
        didSet{
            print("playerHand updated")
            playerValueLabel.text = "\(playerHand)"
        }
    }
    var standPressed = false
    var dealerHand = 0{
        didSet{
            if standPressed == true
            {
            dealerValueLabel.text = "\(dealerHand)"
            }
        }
    }
    var GamesPlayedCount = 0
    var currentBet = 0{
        didSet{
            currentBetLabel.text = "$"+"\(currentBet)"
        }
    }
    var bank = 5000{
        didSet{
            yourBankLabel.text = "Your Bank: $"+"\(bank)"
        }
    }
    
    override func viewDidLoad()
    
    {
        yourBankLabel.text = "Your Bank: $"+"\(bank)"
        currentBetLabel.text = "$"+"\(currentBet)"
        
        super.viewDidLoad()
    
        
        //Hiding the Hit Cards
        
        playerCard3.isHidden = true
        playerCard4.isHidden = true
        playerCard5.isHidden = true
        
        dealerCard2.isHidden = true
        dealerCard3.isHidden = true
        dealerCard4.isHidden = true
        
        hitButton.isUserInteractionEnabled = true
        standButton.isUserInteractionEnabled = true
    
        //Cards Array:
        
        cards = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12, card13, card14, card15, card16, card17, card18, card19, card20, card21, card22, card23, card24, card25, card26, card27, card28, card29, card30, card31, card32, card33, card34, card35, card36, card37, card38, card39, card40, card41, card42, card43, card44, card45, card46, card47, card48, card49, card50, card51, card52]
        
        roundBegin()
    }
    
    //2C, 2D, 2H, 2S
    let card1 = Card(image: UIImage(named: "1-2C")!, v: 2)
    let card2 = Card(image: UIImage(named: "2-2D")!, v: 2)
    let card3 = Card(image: UIImage(named: "3-2S")!, v: 2)
    let card4 = Card(image: UIImage(named: "4-2H")!, v: 2)
    
    //3C, 3D, 3H, 3S
    let card5 = Card(image: UIImage(named: "5-3C")!, v: 3)
    let card6 = Card(image: UIImage(named: "6-3D")!, v: 3)
    let card7 = Card(image: UIImage(named: "7-3H")!, v: 3)
    let card8 = Card(image: UIImage(named: "8-3S")!, v: 3)
    
    //4C, 4D, 4H, 4S
    let card9 = Card(image: UIImage(named: "9-4C")!, v: 4)
    let card10 = Card(image: UIImage(named: "10-4D")!, v: 4)
    let card11 = Card(image: UIImage(named: "11-4H")!, v: 4)
    let card12 = Card(image: UIImage(named: "12-4S")!, v: 4)
    
    //5C, 5D, 5H, 5S
    let card13 = Card(image: UIImage(named: "13-5C")!, v: 5)
    let card14 = Card(image: UIImage(named: "14-5D")!, v: 5)
    let card15 = Card(image: UIImage(named: "15-5H")!, v: 5)
    let card16 = Card(image: UIImage(named: "16-5S")!, v: 5)
    
    //6C, 6D, 6H, 6S
    let card17 = Card(image: UIImage(named: "17-6C")!, v: 6)
    let card18 = Card(image: UIImage(named: "18-6D")!, v: 6)
    let card19 = Card(image: UIImage(named: "19-6H")!, v: 6)
    let card20 = Card(image: UIImage(named: "20-6S")!, v: 6)
    
    //7C, 7D, 7H, 7S
    let card21 = Card(image: UIImage(named: "21-7C")!, v: 7)
    let card22 = Card(image: UIImage(named: "22-7D")!, v: 7)
    let card23 = Card(image: UIImage(named: "23-7H")!, v: 7)
    let card24 = Card(image: UIImage(named: "24-7S")!, v: 7)
    
    //8C, 8D, 8H, 8S
    let card25 = Card(image: UIImage(named: "25-8C")!, v: 8)
    let card26 = Card(image: UIImage(named: "26-8D")!, v: 8)
    let card27 = Card(image: UIImage(named: "27-8H")!, v: 8)
    let card28 = Card(image: UIImage(named: "28-8S")!, v: 8)
    
    //9C, 9D, 9H, 9S
    let card29 = Card(image: UIImage(named: "29-9C")!, v: 9)
    let card30 = Card(image: UIImage(named: "30-9D")!, v: 9)
    let card31 = Card(image: UIImage(named: "31-9H")!, v: 9)
    let card32 = Card(image: UIImage(named: "32-9S")!, v: 9)
    
    //10C, 10D, 10H, 10S
    let card33 = Card(image: UIImage(named: "33-10C")!, v: 10)
    let card34 = Card(image: UIImage(named: "34-10D")!, v: 10)
    let card35 = Card(image: UIImage(named: "35-10H")!, v:10)
    let card36 = Card(image: UIImage(named: "36-10S")!, v: 10)
    
    //AC, AD, AH, AS
    let card37 = Card(image: UIImage(named: "37-AC")!, v: 1 | 11)
    let card38 = Card(image: UIImage(named: "38-AD")!, v: 1 | 11)
    let card39 = Card(image: UIImage(named: "39-AH")!, v: 1 | 11)
    let card40 = Card(image: UIImage(named: "40-AS")!, v: 1 | 11)
   
    //JC, JD, JH, JS
    let card41 = Card(image: UIImage(named: "41-JC")!, v: 10)
    let card42 = Card(image: UIImage(named: "42-JD")!, v: 10)
    let card43 = Card(image: UIImage(named: "43-JH")!, v: 10)
    let card44 = Card(image: UIImage(named: "44-JS")!, v: 10)
    
    //KC, KD, KH, KS
    let card45 = Card(image: UIImage(named: "45-KC")!, v: 10)
    let card46 = Card(image: UIImage(named: "46-KD")!, v: 10)
    let card47 = Card(image: UIImage(named: "47-KH")!, v: 10)
    let card48 = Card(image: UIImage(named: "48-KS")!, v: 10)
    
    //QC, QD, QH, QS
    let card49 = Card(image: UIImage(named: "49-QC")!, v: 10)
    let card50 = Card(image: UIImage(named: "50-QD")!, v: 10)
    let card51 = Card(image: UIImage(named: "51-QH")!, v: 10)
    let card52 = Card(image: UIImage(named: "52-QS")!, v: 10)

    //Flip Function
    
    func flip()
    {
        UIImageView.transition(with: dealerCoverCard,
                          duration: 0.75,
                          options: .transitionFlipFromRight,
                          animations: { self.dealerCoverCard.image = self.dealerCard2.image},
                          completion: nil)
        hitButton.isUserInteractionEnabled = false
        standButton.isUserInteractionEnabled = false
        dealerHits()
    }
    
    //Check For Winner Function
    
    func checkForWinner()
    {
        calcValues()
        if playerHand > 21
        {
            let newAlert = UIAlertController(title: "You Lose!", message: "You lost $\(currentBet)", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                newAlert.dismiss(animated: true, completion:nil)
            })
            
            newAlert.addAction(ok)
            
            present(newAlert, animated: true, completion: nil)
            
        }
        
        else if dealerHand == 21 && playerHand != 21
        {
            let newAlert = UIAlertController(title: "You Lose!", message: "You lost $\(currentBet)", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                newAlert.dismiss(animated: true, completion:nil)
            })
            
            newAlert.addAction(ok)
            
            present(newAlert, animated: true, completion: nil)
        }
            
        else if  playerHand == 21 && dealerHand != 21
        {
            let newAlert = UIAlertController(title: "You Win!", message: "You won $\(2*currentBet)!", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                newAlert.dismiss(animated: true, completion: nil)
            })
            
            newAlert.addAction(ok)
            
            present(newAlert, animated: true, completion: nil)
            
            bank = bank + (2*currentBet)
        }
            
        else if playerHand < 21 && dealerHand < 21
        {
            
            if playerHand < dealerHand
            {
                let newAlert = UIAlertController(title: "You Lose!", message: "You lost $\(currentBet)", preferredStyle: .alert)
                
                let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                    newAlert.dismiss(animated: true, completion: nil)
                })
                
                newAlert.addAction(ok)
                
                present(newAlert, animated: true, completion: nil)
                
                GamesPlayedCount += 1
            }
                
            else if playerHand == dealerHand
            {
                let newAlert = UIAlertController(title: "You Tied!", message: "Better luck next time.", preferredStyle: .alert)
                
                let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                    newAlert.dismiss(animated: true, completion: nil)
                })
                
                newAlert.addAction(ok)
                
                present(newAlert, animated: true, completion: nil)
                
                GamesPlayedCount += 1
            }
                
            else if playerHand > dealerHand
            {
                let newAlert = UIAlertController(title: "You Win!", message: "You won $\(2*currentBet)!", preferredStyle: .alert)
                
                let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                    newAlert.dismiss(animated: true, completion: nil)
                })
                
                newAlert.addAction(ok)
                
                present(newAlert, animated: true, completion: nil)
                
                bank = bank + (2*currentBet)
            }
        }
        else if dealerHand > 21 && playerHand < 21
        {
            let newAlert = UIAlertController(title: "You Win!", message: "You won $(\(2*currentBet)!", preferredStyle: .alert)
                
            let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
                    newAlert.dismiss(animated: true, completion: nil)
            })
                
            newAlert.addAction(ok)
                
            present(newAlert, animated: true, completion: nil)
            
            bank = bank + (2*currentBet)
        }
        print("bank: \(bank)")
    }
    
    //Round Begin Function
    
    func roundBegin()
    {
        currentBet = 0
        
        fiveChip.isUserInteractionEnabled = true
        tenChip.isUserInteractionEnabled = true
        twentyFiveChip.isUserInteractionEnabled = true
        oneHundredChip.isUserInteractionEnabled = true
        cancelButton.isUserInteractionEnabled = true
        
        standPressed = false
        playerHand = 0
        dealerHand = 0
        playerValueLabel.text = "\(playerHand)"
        dealerValueLabel.text = "?"
        
        //place bet alert
        let newAlert = UIAlertController(title: "Place Your Bet", message: "Use the chips below to select the amount you want to wager on this match", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Ok", style: .default, handler: {action in
            newAlert.dismiss(animated: true, completion: nil)
        })
        
        newAlert.addAction(ok)
        
        present(newAlert, animated: true, completion: nil)
        
        hitButton.isUserInteractionEnabled = true
        standButton.isUserInteractionEnabled = true
        dealerCoverCard.isHidden = false
        dealerCard3.isHidden = true
        dealerCard4.isHidden = true
        playerCards.removeAll()
        dealerCards.removeAll()
        counter = 0
        playerValueLabel.text = "\(playerHand)"
        
        if playerCard3.isHidden == false
        {
            self.playerCard3.isHidden = true
            playerCard3.image = nil
            self.playerCard2.frame.origin.x += 65
            playerValueLabel.text = "\(playerHand)"
            print("player hand value updated")
        }
            
        else if playerCard4.isHidden == false
        {
            self.playerCard4.isHidden = true
            playerCard4.image = nil
            playerValueLabel.text = "\(playerHand)"
            print("player hand value updated")
        }
        else if playerCard5.isHidden == false
        {
            self.playerCard5.isHidden = true
            playerCard5.image = nil
            playerValueLabel.text = "\(playerHand)"
            print("player hand value updated")
        }
        playerCard3.isHidden = true
        playerCard4.isHidden = true
        playerCard5.isHidden = true
        
    //Shuffle Function
        
        cards.shuffle()
        
        playerCard1.image = cards.first?.image
        playerCards.append(cards.remove(at: 0))
        
        playerCard2.image = cards.first?.image
        playerCards.append(cards.remove(at: 0))
        
        dealerCard1.image = cards.first?.image
        dealerCards.append(cards.remove(at: 0))
        
        dealerCard2.image = cards.first?.image
        dealerCards.append(cards.remove(at: 0))
        
        dealerCoverCard.image = UIImage(named: "gray_back")
        
        calcValues()
    }
    
    func calcValues()
    {
        playerHand = 0
        dealerHand = 0
        for card in playerCards
        {
            playerHand += card.value
        }
        print("player has \(playerCards.count)")
        playerValueLabel.text = "\(playerHand)"
        
        for card in dealerCards
        {
            dealerHand += card.value
        }
        print("dealer has \(dealerCards.count)")
        print(playerHand)
        print(dealerHand)
    }
    
    //Dealer Hits Function
    
    func dealerHits()
    {
        var seconds = 0
        
       Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            seconds += 1
            print("Timer Fired")
            if seconds == 2
            {
                if self.dealerHand >= 17
                {
                    timer.invalidate()
                    self.checkForWinner()
                }
                else if self.dealerHand < 17
                {
                    self.dealerCoverCard.layer.zPosition = 5
                    self.dealerCoverCard.frame.origin.x -= 65
                    self.calcValues()
                }
            }
            else if seconds == 4
            {
                if self.dealerHand >= 17
                {
                    timer.invalidate()
                    self.checkForWinner()
                }
                else if self.dealerHand < 17
                {
                    self.dealerCard3.layer.zPosition = 6
                    self.dealerCard3.isHidden = false
                    self.dealerCard3.image = self.cards.first?.image
                    self.dealerCards.append(self.cards.remove(at: 0))
                    self.calcValues()
                }
                
            }
            else if seconds == 6
            {
                if self.dealerHand >= 17
                {
                    timer.invalidate()
                    self.checkForWinner()
                }
                else if self.dealerHand < 17
                {
                    self.dealerCard4.layer.zPosition = 7
                    self.dealerCard4.isHidden = false
                    self.dealerCard4.image = self.cards.first?.image
                    self.dealerCards.append(self.cards.remove(at: 0))
                    self.calcValues()
                }
            }
            else if seconds == 8
            {
                timer.invalidate()
                self.checkForWinner()
            }
        }
      calcValues()
    }
    
    //Round Start Button Tapped
    
    @IBAction func RSTapped(_ sender: UIButton)
    {
        self.dealerCoverCard.frame.origin.x = 125
        roundBegin()
        playerValueLabel.text = "\(playerHand)"
        print("player hand value updated")
    }
    
    //Hit Button Tapped
    
    var counter = 0
    
    @IBAction func hitTapped(_ sender: UIButton)
    {
      fiveChip.isUserInteractionEnabled = false
      tenChip.isUserInteractionEnabled = false
      twentyFiveChip.isUserInteractionEnabled = false
      oneHundredChip.isUserInteractionEnabled = false
      cancelButton.isUserInteractionEnabled = false
      counter = counter + 1
        
      if counter == 1
        {
        self.playerCard2.layer.zPosition = 5
        self.playerCard3.layer.zPosition = 6
        self.playerCard2.frame.origin.x -= 65
        playerCard3.isHidden = false
        playerCard3.image = cards.first?.image
        playerCards.append(cards.remove(at: 0))
        playerValueLabel.text = "\(playerHand)"
        }
        
      else if counter == 2
        {
        self.playerCard4.layer.zPosition = 7
        playerCard4.image = cards.first?.image
        playerCards.append(cards.remove(at: 0))
        playerCard4.isHidden = false
        playerValueLabel.text = "\(playerHand)"
        }
        
      else if counter == 3
        {
        self.playerCard5.layer.zPosition = 8
        playerCard5.image = cards.first?.image
        playerCards.append(cards.remove(at: 0))
        playerCard5.isHidden = false
        playerValueLabel.text = "\(playerHand)"
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
            playerValueLabel.text = "\(playerHand)"
        }
        calcValues()
    }
    
    
    
    //betting
    @IBAction func fiveChipTapped(_ sender: UIButton)
    {
        currentBet += 5
        currentBetLabel.text = "$"+"\(currentBet)"
        bank -= 5
        yourBankLabel.text = "Your Bank: $"+"\(bank)"
    }
    @IBAction func tenChipTapped(_ sender: UIButton)
    {
        currentBet += 10
        currentBetLabel.text = "$"+"\(currentBet)"
        bank -= 10
        yourBankLabel.text = "Your Bank: $"+"\(bank)"
    }
    @IBAction func twentyFiveChipTapped(_ sender: UIButton)
    {
        currentBet += 25
        currentBetLabel.text = "$"+"\(currentBet)"
        bank -= 25
        yourBankLabel.text = "Your Bank: $"+"\(bank)"
    }
    @IBAction func oneHundredChipTapped(_ sender: UIButton)
    {
        currentBet += 100
        currentBetLabel.text = "$"+"\(currentBet)"
        bank -= 100
        yourBankLabel.text = "Your Bank: $"+"\(bank)"
    }
    @IBAction func cancelBetTapped(_ sender: UIButton)
    {
        bank += currentBet
        yourBankLabel.text = "Your Bank: $"+"\(bank)"
        currentBet = 0
        currentBetLabel.text = "$"+"\(currentBet)"
    }
    @IBAction func placeBetTapped(_ sender: UIButton)
    {
        fiveChip.isUserInteractionEnabled = false
        tenChip.isUserInteractionEnabled = false
        twentyFiveChip.isUserInteractionEnabled = false
        oneHundredChip.isUserInteractionEnabled = false
        cancelButton.isUserInteractionEnabled = false
    }
    
    //Stand Button Tapped
    @IBAction func standTapped(_ sender: UIButton)
    {
        standPressed = true
        flip()
    }
    
   
    
    
}


