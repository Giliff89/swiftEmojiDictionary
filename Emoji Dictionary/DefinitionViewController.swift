//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by gina iliff on 8/14/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.theEmoji
        emojiDefinitionLabel.text = emoji.emojiDefinition
        categoryLabel.text = "Category: \(emoji.emojiCategory)"
        
    }
}


