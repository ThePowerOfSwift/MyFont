//
//  ShowroomViewController.swift
//  MyFonts
//
//  Created by Irakli on 1/30/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import UIKit
import ShimmerSwift

class ShowroomViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var shimmeringView: ShimmeringView!
    @IBOutlet var customFontsLabel: UILabel!
    @IBOutlet var greatFontsLabel: UILabel!
    @IBOutlet var fontCollectionView: UICollectionView!
    @IBOutlet var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "showroomCell", for: indexPath) as! ShowroomCell
        cell.setup()
        return cell
    }
    
    @IBAction func onTapContinue(_ sender: Any) {
        
    }
    
}
