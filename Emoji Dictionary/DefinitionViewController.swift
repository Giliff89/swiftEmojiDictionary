//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by gina iliff on 8/14/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = ""

    @IBOutlet weak var emojiDefinition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        
        if emoji == "😃" {
            emojiDefinition.text = "A very happy face!"
        }
        
        if emoji == "😇" {
            emojiDefinition.text = "A heavenly smile!"
        }
        
        if emoji == "😡" {
            emojiDefinition.text = "Uh oh, someone is angry!"
        }
        
        if emoji == "😘" {
            emojiDefinition.text = "Someone is blowing kisses at you!"
        }
        
        if emoji == "🦊" {
            emojiDefinition.text = "A friendly fox. Maybe he wants to play?"
        }
        
        if emoji == "🦄" {
            emojiDefinition.text = "The ellusive, mystical unicorn!"
        }
        
        if emoji == "🥗" {
            emojiDefinition.text = "Clearly someone is trying to eat healthy."
        }
        
        if emoji == "🥃" {
            emojiDefinition.text = "A fine glass of bourbon whiskey, neat."
        }
        
        if emoji == "🍙" {
            emojiDefinition.text = "Delicious onigiri! I wonder what's inside?"
        }
        
        if emoji == "🏕" {
            emojiDefinition.text = "Want to go camping? It's in tents."
        }
        
        if emoji == "🏖" {
            emojiDefinition.text = "A relaxing tropical island getaway!"
        }
        
        if emoji == "🛫" {
            emojiDefinition.text = "Let's get out of town and fly somewhere!"
        }
        
        if emoji == "🌉" {
            emojiDefinition.text = "The city I call home, San Francisco!"
        }
        
        if emoji == "🏠" {
            emojiDefinition.text = "Something I will never have in SF..."
        }
        
        if emoji == "🌮" {
            emojiDefinition.text = "Everyone loves tacos!"
        }
        
        if emoji == "🥓" {
            emojiDefinition.text = "Mmm...bacon! What else is there to say?"
        }

    }


    



}
