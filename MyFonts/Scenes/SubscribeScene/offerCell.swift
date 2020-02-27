//
//  offerCell.swift
//  MyFonts
//
//  Created by Irakli on 2/5/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import UIKit

class OfferCell: UITableViewCell {
    
    @IBOutlet var iconImageView: UIImageView! {
        didSet {
            iconImageView.tintColor = THEME_MAIN_COLOR
        }
    }
    @IBOutlet var titleLabel: UILabel! {
        didSet {
            titleLabel.textColor = LABEL_MAIN_COLOR
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setup(image: String, text: String) {    
        iconImageView.image = UIImage(named: image)?.withRenderingMode(.alwaysTemplate)
        titleLabel.text = NSLocalizedString(text, comment: "")
    }
}
