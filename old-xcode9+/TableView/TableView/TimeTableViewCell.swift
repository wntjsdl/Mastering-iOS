//
//  TimeTableViewCell.swift
//  TableView
//
//  Created by JuSun Kang on 2020/11/10.
//  Copyright © 2020 Keun young Kim. All rights reserved.
//

import UIKit

class TimeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
