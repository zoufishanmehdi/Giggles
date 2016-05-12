//
//  JokeCellTableViewCell.swift
//  FirebaseJokes
//
//  Created by Zoufishan Mehdi on 5/11/16.
//  Copyright © 2016 c4q. All rights reserved.
//

import UIKit

class JokeCellTableViewCell: UITableViewCell {
    
    @IBOutlet weak var jokeText: UITextView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var totalVotesLabel: UILabel!
    @IBOutlet weak var thumbVoteImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
}
