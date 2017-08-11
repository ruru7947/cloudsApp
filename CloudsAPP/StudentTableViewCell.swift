//
//  StudentTableViewCell.swift
//  CloudsAPP
//
//  Created by ruru on 2017/8/7.
//  Copyright © 2017年 mike. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabe: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
