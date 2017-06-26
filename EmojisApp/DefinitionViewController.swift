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
    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var birthYearLbl: UILabel!
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLbl.text = emoji.stringEmoji
        birthYearLbl.text = "Origination Date: \(emoji.birthYear)"
        categoryLbl.text = "Category: \(emoji.category)"
        definitionLbl.text = emoji.definition

    }


}
