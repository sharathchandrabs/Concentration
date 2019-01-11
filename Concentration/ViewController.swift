//
//  ViewController.swift
//  Concentration
//
//  Created by Sharath Chandra on 1/10/19.
//  Copyright © 2019 Sharath Chandra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0{
        didSet{
            flipCounterLabel.text = "Flips: \(flipCount)"
        }
    }
    
    var emojis = ["💩","👻","💩","👻"]
    
    @IBOutlet weak var flipCounterLabel: UILabel!
    @IBOutlet var btnChoices: [UIButton]!
    
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        let cardNum = btnChoices.index(of: sender)!
        flipCard(withEmoji: emojis[cardNum], on: sender)
        
    }
    
    func flipCard(withEmoji emoji: String, on button : UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.4256681264, blue: 0.1367971964, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}

