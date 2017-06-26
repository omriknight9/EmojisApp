//
//  ViewController.swift
//  EmojisApp
//
//  Created by Omri Shalev on 25/06/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var emojiTableView: UITableView!
    
    var emojiArr: [Emoji] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiArr = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        let cell = UITableViewCell()
        let emoji = emojiArr[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojiArr[indexPath.row]
        performSegue(withIdentifier: "GoToSecond", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🤡"
        emoji1.birthYear = 2011
        emoji1.category = "Smiley"
        emoji1.definition = "I'ts a scary Clown"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🎱"
        emoji2.birthYear = 1990
        emoji2.category = "Toys"
        emoji2.definition = "The 8th Ball Is The Winner Or Loser"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐯"
        emoji3.birthYear = 2006
        emoji3.category = "Animals"
        emoji3.definition = "The Tiger Is A Fierce Predator"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤑"
        emoji4.birthYear = 2004
        emoji4.category = "Smiley"
        emoji4.definition = "I Have Won The Lottery!"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "💩"
        emoji5.birthYear = 2000
        emoji5.category = "Smiley"
        emoji5.definition = "That Is An Awful Smell"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🤖"
        emoji6.birthYear = 2005
        emoji6.category = "Toys"
        emoji6.definition = "The Future Is Here"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "😈"
        emoji7.birthYear = 2013
        emoji7.category = "Smiley"
        emoji7.definition = "Be Carful, It's The Devil"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "😱"
        emoji8.birthYear = 2016
        emoji8.category = "Smiley"
        emoji8.definition = "Help!!!!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7]
    }
    

}

