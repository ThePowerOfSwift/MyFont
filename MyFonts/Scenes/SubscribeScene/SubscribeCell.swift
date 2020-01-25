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
    
    @IBOutlet var media: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    public func setup(index: Int) {
        do {
            try media.setGifImage(UIImage(gifName: "gif\(index).gif"))
        } catch {
            print(error)
        }
    }
    
}
//"gif\(index).gif"
