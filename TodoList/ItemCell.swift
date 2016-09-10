//
//  ItemCell.swift
//  LetsDoIt
//
//  Created by Arshin Jain on 9/9/16.
//  Copyright © 2016 Arshin Jain. All rights reserved.
//

import UIKit

class ItemCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemType: UILabel!
    @IBOutlet weak var imageMark: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
