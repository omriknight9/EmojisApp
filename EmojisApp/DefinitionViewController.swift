//
//  DefinitionViewController.swift
//  EmojisApp
//
//  Created by Omri Shalev on 25/06/2017.
//  Copyright © 2017 Omri Shalev. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    
    @IBOutlet weak var definitionLbl: UILabel!
    @IBOutlet weak var emojiLbl: UILabel!

    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLbl.text = emoji
        
        if emoji == "🤡" {
            definitionLbl.text = "I'ts A scary Clown"
        }else if emoji == "🎱"{
            definitionLbl.text = "The 8th Ball Is The Winner Or Loser"
        }else if emoji == "🐯"{
            definitionLbl.text = "The Tiger Is A Fierce Predator"
        }else if emoji == "🤑"{
            definitionLbl.text = "I Have Won The Lottery!"
        }else if emoji == "💩"{
            definitionLbl.text = "That Is An Awful Smell"
        }else if emoji == "🤖"{
            definitionLbl.text = "The Future Is Here"
        }else if emoji == "😈"{
            definitionLbl.text = "Be Carful, It's The Devil"
        }else if emoji == "😱"{
            definitionLbl.text = "Help!!!!"
        }

        

    }


}
