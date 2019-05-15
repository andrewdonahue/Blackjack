//
//  CardImage.swift
//  Blackjack
//
//  Created by  on 5/6/19.
//  Copyright © 2019 Donahue_Apps. All rights reserved.
//

import UIKit


class Card

{
    var image: UIImage
    
    var value: Int
    
    init(image: UIImage, v: Int)
    {
        self.image = image
        value = v
    }
}
