//
//  CustomHeaderView.swift
//  TableView
//
//  Created by JuSun Kang on 2020/11/10.
//  Copyright © 2020 Keun young Kim. All rights reserved.
//

import UIKit

class CustomHeaderView: UITableViewHeaderFooterView {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var customBackgroundView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        countLabel.text = "0"
        countLabel.layer.cornerRadius = 30
        countLabel.clipsToBounds = true
        
        backgroundView = customBackgroundView
    }
}
