//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by gina iliff on 8/14/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis : [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojis = createEmojis()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        
        let emoji = emojis[indexPath.row]

        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.emojiCategory)"

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "ourSegue", sender: emoji)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let emojiDefVC = segue.destination as! DefinitionViewController
        
        emojiDefVC.emoji = sender as! Emoji
    }
    
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😃"
        smiley.emojiDefinition = "A very happy face!"
        smiley.emojiCategory = "Faces"
        
        let heavenly = Emoji()
        heavenly.theEmoji = "😇"
        heavenly.emojiDefinition = "A heavenly smile!"
        heavenly.emojiCategory = "Faces"
        
        let kiss = Emoji()
        kiss.theEmoji = "😘"
        kiss.emojiDefinition = "Someone is blowing kisses at you!"
        kiss.emojiCategory = "Faces"
        
        let angry = Emoji()
        angry.theEmoji = "😡"
        angry.emojiDefinition = "Uh oh, someone is angry!"
        angry.emojiCategory = "Faces"
        
        let fox = Emoji()
        fox.theEmoji = "🦊"
        fox.emojiDefinition = "A friendly fox. Maybe he wants to play?"
        fox.emojiCategory = "Animals"
        
        let unicorn = Emoji()
        unicorn.theEmoji = "🦄"
        unicorn.emojiDefinition = "The ellusive, mystical unicorn!"
        unicorn.emojiCategory = "Animals"
        
        let salad = Emoji()
        salad.theEmoji = "🥗"
        salad.emojiDefinition = "Clearly someone is trying to eat healthy."
        salad.emojiCategory = "Food and Drink"
        
        let whiskey = Emoji()
        whiskey.theEmoji = "🥃"
        whiskey.emojiDefinition = "A fine glass of bourbon whiskey, neat."
        whiskey.emojiCategory = "Food and Drink"
        
        let onigiri = Emoji()
        onigiri.theEmoji = "🍙"
        onigiri.emojiDefinition = "Delicious onigiri! I wonder what's inside?"
        onigiri.emojiCategory = "Food and Drink"
        
        let camp = Emoji()
        camp.theEmoji = "🏕"
        camp.emojiDefinition = "Want to go camping? It's in tents."
        camp.emojiCategory = "Places"
        
        let beach = Emoji()
        beach.theEmoji = "🏖"
        beach.emojiDefinition = "A relaxing tropical island getaway!"
        beach.emojiCategory = "Places"
        
        let plane = Emoji()
        plane.theEmoji = "🛫"
        plane.emojiDefinition = "Let's get out of town and fly somewhere!"
        plane.emojiCategory = "Automobile"
        
        let bridge = Emoji()
        bridge.theEmoji = "🌉"
        bridge.emojiDefinition = "The city I call home, San Francisco!"
        bridge.emojiCategory = "Places"
        
        let home = Emoji()
        home.theEmoji = "🏠"
        home.emojiDefinition = "Something I will never have in SF..."
        home.emojiCategory = "Places"
        
        let taco = Emoji()
        taco.theEmoji = "🌮"
        taco.emojiDefinition = "Everyone loves tacos!"
        taco.emojiCategory = "Food and Drink"
        
        let bacon = Emoji()
        bacon.theEmoji = "🥓"
        bacon.emojiDefinition = "Mmm...bacon! What else is there to say?"
        bacon.emojiCategory = "Food and Drink"
        
        return [smiley, heavenly, kiss, angry, fox, unicorn, salad, whiskey, onigiri, camp, beach, plane, bridge, home, taco, bacon]
    }

}
