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
    
    let emojiArr = ["🤡", "💩", "🤖", "😈", "😱", "🤑", "🐯", "🎱"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath)
        let cell = UITableViewCell()
        
        cell.textLabel?.text = emojiArr[indexPath.row]
        return cell
    }
    

}

