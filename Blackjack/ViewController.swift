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
    var cards: [UIImage] = [UIImage]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cards = [image1, image2, image3, image4, image5, image6, image7, image8, image9, image10, image11, image12, image13, image14, image15, image16, image17, image18, image19, image20, image21, image22, image23, image24, image25, image26, image27, image28, image29, image30, image31, image32, image33, image34, image35, image36, image37,] as! [UIImage]
        cards.shuffle()
        playerCard1.image = cards.first
        cards.remove(at: 0)
        playerCard2.image = cards.first
       
    }

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
        else if rand1 == 14
        {
            playerCard1.image = image14
        }
        else if rand1 == 15
        {
            playerCard1.image = image15
        }
        else if rand1 == 16
        {
            playerCard1.image = image16
        }
        else if rand1 == 17
        {
            playerCard1.image = image17
        }
        else if rand1 == 18
        {
            playerCard1.image = image18
        }
        else if rand1 == 19
        {
            playerCard1.image = image19
        }
        else if rand1 == 20
        {
            playerCard1.image = image20
        }
        else if rand1 == 21
        {
            playerCard1.image = image21
        }
        else if rand1 == 22
        {
            playerCard1.image = image22
        }
        else if rand1 == 23
        {
            playerCard1.image = image23
        }
        else if rand1 == 24
        {
            playerCard1.image = image24
        }
        else if rand1 == 25
        {
            playerCard1.image = image25
        }
        else if rand1 == 26
        {
            playerCard1.image = image26
        }
        else if rand1 == 27
        {
            playerCard1.image = image27
        }
        else if rand1 == 28
        {
            playerCard1.image = image28
        }
        else if rand1 == 29
        {
            playerCard1.image = image29
        }
        else if rand1 == 30
        {
            playerCard1.image = image30
        }
        else if rand1 == 31
        {
            playerCard1.image = image31
        }
        else if rand1 == 32
        {
            playerCard1.image = image32
        }
        else if rand1 == 33
        {
            playerCard1.image = image33
        }
        else if rand1 == 34
        {
            playerCard1.image = image34
        }
        else if rand1 == 35
        {
            playerCard1.image = image35
        }
        else if rand1 == 36
        {
            playerCard1.image = image36
        }
        else if rand1 == 37
        {
            playerCard1.image = image37
        }
        else if rand1 == 38
        {
            playerCard1.image = image38
        }
        else if rand1 == 39
        {
            playerCard1.image = image39
        }
        else if rand1 == 40
        {
            playerCard1.image = image40
        }
        else if rand1 == 41
        {
            playerCard1.image = image41
        }
        else if rand1 == 42
        {
            playerCard1.image = image42
        }
        else if rand1 == 43
        {
            playerCard1.image = image43
        }
        else if rand1 == 44
        {
            playerCard1.image = image44
        }
        else if rand1 == 45
        {
            playerCard1.image = image45
        }
        else if rand1 == 46
        {
            playerCard1.image = image46
        }
        else if rand1 == 47
        {
            playerCard1.image = image47
        }
        else if rand1 == 48
        {
            playerCard1.image = image48
        }
        else if rand1 == 49
        {
            playerCard1.image = image49
        }
        else if rand1 == 50
        {
            playerCard1.image = image50
        }
        else if rand1 == 51
        {
            playerCard1.image = image51
        }
        else if rand1 == 52
        {
            playerCard1.image = image52
        }
    //end rand1
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
        else if rand2 == 14
        {
            playerCard2.image = image14
        }
        else if rand2 == 15
        {
            playerCard2.image = image15
        }
        else if rand2 == 16
        {
            playerCard2.image = image16
        }
        else if rand2 == 17
        {
            playerCard2.image = image17
        }
        else if rand2 == 18
        {
            playerCard2.image = image18
        }
        else if rand2 == 19
        {
            playerCard2.image = image19
        }
        else if rand2 == 20
        {
            playerCard2.image = image20
        }
        else if rand2 == 21
        {
            playerCard2.image = image21
        }
        else if rand2 == 22
        {
            playerCard2.image = image22
        }
        else if rand2 == 23
        {
            playerCard2.image = image23
        }
        else if rand2 == 24
        {
            playerCard2.image = image24
        }
        else if rand2 == 25
        {
            playerCard2.image = image25
        }
        else if rand2 == 26
        {
            playerCard2.image = image26
        }
        else if rand2 == 27
        {
            playerCard2.image = image27
        }
        else if rand2 == 28
        {
            playerCard2.image = image28
        }
        else if rand2 == 29
        {
            playerCard2.image = image29
        }
        else if rand2 == 30
        {
            playerCard2.image = image30
        }
        else if rand2 == 31
        {
            playerCard2.image = image31
        }
        else if rand2 == 32
        {
            playerCard2.image = image32
        }
        else if rand2 == 33
        {
            playerCard2.image = image33
        }
        else if rand2 == 34
        {
            playerCard2.image = image34
        }
        else if rand2 == 35
        {
            playerCard2.image = image35
        }
        else if rand2 == 36
        {
            playerCard2.image = image36
        }
        else if rand2 == 37
        {
            playerCard2.image = image37
        }
        else if rand2 == 38
        {
            playerCard2.image = image38
        }
        else if rand2 == 39
        {
            playerCard2.image = image39
        }
        else if rand2 == 40
        {
            playerCard2.image = image40
        }
        else if rand2 == 41
        {
            playerCard2.image = image41
        }
        else if rand2 == 42
        {
            playerCard2.image = image42
        }
        else if rand2 == 43
        {
            playerCard2.image = image43
        }
        else if rand2 == 44
        {
            playerCard2.image = image44
        }
        else if rand2 == 45
        {
            playerCard2.image = image45
        }
        else if rand2 == 46
        {
            playerCard2.image = image46
        }
        else if rand2 == 47
        {
            playerCard2.image = image47
        }
        else if rand2 == 48
        {
            playerCard2.image = image48
        }
        else if rand2 == 49
        {
            playerCard2.image = image49
        }
        else if rand2 == 50
        {
            playerCard2.image = image50
        }
        else if rand2 == 51
        {
            playerCard2.image = image51
        }
        else if rand2 == 52
        {
            playerCard2.image = image52
        }
    //end rand2
        if rand3 == 1
        {
            dealerCard1.image = image1
        }
        else if rand3 == 2
        {
            dealerCard1.image = image2
        }
        else if rand3 == 3
        {
            dealerCard1.image = image3
        }
        else if rand3 == 4
        {
            dealerCard1.image = image4
        }
        else if rand3 == 5
        {
            dealerCard1.image = image5
        }
        else if rand3 == 6
        {
            dealerCard1.image = image6
        }
        else if rand3 == 7
        {
            dealerCard1.image = image7
        }
        else if rand3 == 8
        {
            dealerCard1.image = image8
        }
        else if rand3 == 9
        {
            dealerCard1.image = image9
        }
        else if rand3 == 10
        {
            dealerCard1.image = image10
        }
        else if rand3 == 11
        {
            dealerCard1.image = image11
        }
        else if rand3 == 12
        {
            dealerCard1.image = image12
        }
        else if rand3 == 13
        {
            dealerCard1.image = image13
        }
        else if rand3 == 14
        {
            dealerCard1.image = image14
        }
        else if rand3 == 15
        {
            dealerCard1.image = image15
        }
        else if rand3 == 16
        {
            dealerCard1.image = image16
        }
        else if rand3 == 17
        {
            dealerCard1.image = image17
        }
        else if rand3 == 18
        {
            dealerCard1.image = image18
        }
        else if rand3 == 19
        {
            dealerCard1.image = image19
        }
        else if rand3 == 20
        {
            dealerCard1.image = image20
        }
        else if rand3 == 21
        {
            dealerCard1.image = image21
        }
        else if rand3 == 22
        {
            dealerCard1.image = image22
        }
        else if rand3 == 23
        {
            dealerCard1.image = image23
        }
        else if rand3 == 24
        {
            dealerCard1.image = image24
        }
        else if rand3 == 25
        {
            dealerCard1.image = image25
        }
        else if rand3 == 26
        {
            dealerCard1.image = image26
        }
        else if rand3 == 27
        {
            dealerCard1.image = image27
        }
        else if rand3 == 28
        {
            dealerCard1.image = image28
        }
        else if rand3 == 29
        {
            dealerCard1.image = image29
        }
        else if rand3 == 30
        {
            dealerCard1.image = image30
        }
        else if rand3 == 31
        {
            dealerCard1.image = image31
        }
        else if rand3 == 32
        {
            dealerCard1.image = image32
        }
        else if rand3 == 33
        {
            dealerCard1.image = image33
        }
        else if rand3 == 34
        {
            dealerCard1.image = image34
        }
        else if rand3 == 35
        {
            dealerCard1.image = image35
        }
        else if rand3 == 36
        {
            dealerCard1.image = image36
        }
        else if rand3 == 37
        {
            dealerCard1.image = image37
        }
        else if rand3 == 38
        {
            dealerCard1.image = image38
        }
        else if rand3 == 39
        {
            dealerCard1.image = image39
        }
        else if rand3 == 40
        {
            dealerCard1.image = image40
        }
        else if rand3 == 41
        {
            dealerCard1.image = image41
        }
        else if rand3 == 42
        {
            dealerCard1.image = image42
        }
        else if rand3 == 43
        {
            dealerCard1.image = image43
        }
        else if rand3 == 44
        {
            dealerCard1.image = image44
        }
        else if rand3 == 45
        {
            dealerCard1.image = image45
        }
        else if rand3 == 46
        {
            dealerCard1.image = image46
        }
        else if rand3 == 47
        {
            dealerCard1.image = image47
        }
        else if rand3 == 48
        {
            dealerCard1.image = image48
        }
        else if rand3 == 49
        {
            dealerCard1.image = image49
        }
        else if rand3 == 50
        {
            dealerCard1.image = image50
        }
        else if rand3 == 51
        {
            dealerCard1.image = image51
        }
        else if rand3 == 52
        {
            dealerCard1.image = image52
        }
    //end rand3
        if rand4 == 1
        {
            dealerCard2.image = image1
        }
        else if rand4 == 2
        {
            dealerCard2.image = image2
        }
        else if rand4 == 3
        {
            dealerCard2.image = image3
        }
        else if rand4 == 4
        {
            dealerCard2.image = image4
        }
        else if rand4 == 5
        {
            dealerCard2.image = image5
        }
        else if rand4 == 6
        {
            dealerCard2.image = image6
        }
        else if rand4 == 7
        {
            dealerCard2.image = image7
        }
        else if rand4 == 8
        {
            dealerCard2.image = image8
        }
        else if rand4 == 9
        {
            dealerCard2.image = image9
        }
        else if rand4 == 10
        {
            dealerCard2.image = image10
        }
        else if rand4 == 11
        {
            dealerCard2.image = image11
        }
        else if rand4 == 12
        {
            dealerCard2.image = image12
        }
        else if rand4 == 13
        {
            dealerCard2.image = image13
        }
        else if rand4 == 14
        {
            dealerCard2.image = image14
        }
        else if rand4 == 15
        {
            dealerCard2.image = image15
        }
        else if rand4 == 16
        {
            dealerCard2.image = image16
        }
        else if rand4 == 17
        {
            dealerCard2.image = image17
        }
        else if rand4 == 18
        {
            dealerCard2.image = image18
        }
        else if rand4 == 19
        {
            dealerCard2.image = image19
        }
        else if rand4 == 20
        {
            dealerCard2.image = image20
        }
        else if rand4 == 21
        {
            dealerCard2.image = image21
        }
        else if rand4 == 22
        {
            dealerCard2.image = image22
        }
        else if rand4 == 23
        {
            dealerCard2.image = image23
        }
        else if rand4 == 24
        {
            dealerCard2.image = image24
        }
        else if rand4 == 25
        {
            dealerCard2.image = image25
        }
        else if rand4 == 26
        {
            dealerCard2.image = image26
        }
        else if rand4 == 27
        {
            dealerCard2.image = image27
        }
        else if rand4 == 28
        {
            dealerCard2.image = image28
        }
        else if rand4 == 29
        {
            dealerCard2.image = image29
        }
        else if rand4 == 30
        {
            dealerCard2.image = image30
        }
        else if rand4 == 31
        {
            dealerCard2.image = image31
        }
        else if rand4 == 32
        {
            dealerCard2.image = image32
        }
        else if rand4 == 33
        {
            dealerCard2.image = image33
        }
        else if rand4 == 34
        {
            dealerCard2.image = image34
        }
        else if rand4 == 35
        {
            dealerCard2.image = image35
        }
        else if rand4 == 36
        {
            dealerCard2.image = image36
        }
        else if rand4 == 37
        {
            dealerCard2.image = image37
        }
        else if rand4 == 38
        {
            dealerCard2.image = image38
        }
        else if rand4 == 39
        {
            dealerCard2.image = image39
        }
        else if rand4 == 40
        {
            dealerCard2.image = image40
        }
        else if rand4 == 41
        {
            dealerCard2.image = image41
        }
        else if rand4 == 42
        {
            dealerCard2.image = image42
        }
        else if rand4 == 43
        {
            dealerCard2.image = image43
        }
        else if rand4 == 44
        {
            dealerCard2.image = image44
        }
        else if rand4 == 45
        {
            dealerCard2.image = image45
        }
        else if rand4 == 46
        {
            dealerCard2.image = image46
        }
        else if rand4 == 47
        {
            dealerCard2.image = image47
        }
        else if rand4 == 48
        {
            dealerCard2.image = image48
        }
        else if rand4 == 49
        {
            dealerCard2.image = image49
        }
        else if rand4 == 50
        {
            dealerCard2.image = image50
        }
        else if rand4 == 51
        {
            dealerCard2.image = image51
        }
        else if rand4 == 52
        {
            dealerCard2.image = image52
        }
    //end rand4
        
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

