//
//  ShowroomCell.swift
//  MyFonts
//
//  Created by Irakli on 1/30/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import UIKit

class ShowroomCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = 8
            imageView.layer.borderColor = BUTTON_MAIN_COLOR.cgColor
            imageView.layer.borderWidth = 1
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setup(image: String) {
        imageView.image = UIImage(named: image)
    }
    
}
