//
//  PuzzleTableViewCell.swift
//  brainteasers
//
//  Created by Emma Ellis on 4/28/20.
//  Copyright © 2020 Emma Ellis. All rights reserved.
//

import UIKit

class PuzzleTableViewCell: UITableViewCell {

    
    @IBOutlet var puzzleName: UILabel!
    @IBOutlet var time: UILabel!
    @IBOutlet var difficultyLabel: UILabel!
    @IBOutlet var completedInLabel: UILabel!
    

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
