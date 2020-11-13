//
//  FooterCollectionReusableView.swift
//  CollectionView
//
//  Created by JuSun Kang on 2020/11/13.
//  Copyright © 2020 Keun young Kim. All rights reserved.
//

import UIKit

class FooterCollectionReusableView: UICollectionReusableView {
        
    var sectionFooterLabel: UILabel!
    
    private func setup() {
        let lbl = UILabel(frame: bounds)
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.font = UIFont.boldSystemFont(ofSize: 20)
        addSubview(lbl)
        
        if #available(iOS 11.0, *) {
            lbl.leadingAnchor.constraintEqualToSystemSpacingAfter(leadingAnchor, multiplier: 1.0).isActive = true
        } else {
            lbl.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        }
        lbl.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        sectionFooterLabel = lbl
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
}
