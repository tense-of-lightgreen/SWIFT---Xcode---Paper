//
//  PaperCell.swift
//  Paper
//
//  Created by cscoi005 on 2017. 2. 14..
//  Copyright © 2017년 PSJ. All rights reserved.
//

import UIKit

class PaperCell: UITableViewCell {

    @IBOutlet weak var Title: UILabel!
    @IBOutlet weak var Author: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
