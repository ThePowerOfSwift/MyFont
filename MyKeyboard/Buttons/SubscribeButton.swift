//
//  SubscribeButton.swift
//  MyKeyboard
//
//  Created by Irakli on 2/28/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import UIKit

class SubscribeButton: UIView {
    
    @IBOutlet var iconImageView: UIImageView! {
        didSet {
//            iconImageView.image = UIImage(named: "ic_unlock")?.withRenderingMode(.alwaysTemplate)
//            iconImageView.tintColor = UIColor.white
        }
    }
    
    @IBOutlet var unlockButton: UIButton! {
        didSet {
            unlockButton.setTitle(NSLocalizedString("shared.keyboard.unlock", comment: "unlock"), for: .normal)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = frame.height/4
        clipsToBounds = true
        backgroundColor = THEME_MAIN_COLOR
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layer.cornerRadius = frame.height/4
        clipsToBounds = true
        backgroundColor = THEME_MAIN_COLOR
    }
}
