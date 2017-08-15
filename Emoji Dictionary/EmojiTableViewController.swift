//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by gina iliff on 8/14/17.
//  Copyright © 2017 gina iliff. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var emojis = ["😃", "😇", "😡", "😘", "🦊", "🦄", "🥗", "🥃", "🍙", "🏕", "🏖", "🛫", "🌉", "🏠", "🌮", "🥓"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = emojis[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "ourSegue", sender: nil)
        
    }

}
