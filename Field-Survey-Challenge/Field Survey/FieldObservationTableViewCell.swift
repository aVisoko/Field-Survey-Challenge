//
//  FieldObservationTableViewCell.swift
//  Field Survey
//
//  Created by Leo Kim on 7/21/17.
//  Copyright © 2017 LionsGold. All rights reserved.
//

import UIKit

class FieldObservationTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldIcon: UIImageView!
    @IBOutlet weak var fieldTitleLabel: UILabel!
    @IBOutlet weak var fieldDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
