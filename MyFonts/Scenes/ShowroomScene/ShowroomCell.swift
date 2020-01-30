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
    
    @IBOutlet var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setup(index: Int) {
//        imageView.image = UIImage(contentsOfFile: "keyboard1")
    }
    
}
