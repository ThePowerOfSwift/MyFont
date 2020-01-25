//
//  UserFontCell.swift
//  MyFonts
//
//  Created by Irakli on 1/24/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import UIKit

class UserFontCell: UICollectionViewCell {
    
    @IBOutlet var title: UILabel!
    var id: Int?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setup(title: String, id:Int) {
        self.title.text = title
        self.id = id
    }
}
