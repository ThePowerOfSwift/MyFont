//
//  SubscribeCell.swift
//  MyFonts
//
//  Created by Irakli on 1/23/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import UIKit
import SwiftyGif

class SubscribeCell: UICollectionViewCell {
    
    @IBOutlet var media: UIImageView! {
        didSet {
            media.layer.cornerRadius = 8
            media.layer.borderWidth = 1
            media.layer.borderColor = BUTTON_MAIN_COLOR.cgColor
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func setup(index: Int) {
        do {
//            try media.setImage(UIImage(named: "keyboard1")!)
            try media.image = UIImage(named: "keyboard1")!
//            try media.setGifImage(UIImage(gifName: "gif\(index).gif"))
        } catch {
            print(error)
        }
    }
    
}
//"gif\(index).gif"
