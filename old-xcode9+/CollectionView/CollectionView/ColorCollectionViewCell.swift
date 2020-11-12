//
//  ColorCollectionViewCell.swift
//  CollectionView
//
//  Created by JuSun Kang on 2020/11/13.
//  Copyright © 2020 Keun young Kim. All rights reserved.
//

import UIKit

class ColorCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var hexLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        colorView.clipsToBounds = true
        colorView.layer.cornerRadius = colorView.bounds.width / 2
    }
    
}
