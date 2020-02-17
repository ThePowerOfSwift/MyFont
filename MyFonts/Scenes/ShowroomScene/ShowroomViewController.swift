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

class ShowroomViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet var shimmeringView: ShimmeringView!
    @IBOutlet var customFontsLabel: UILabel! {
        didSet {
            customFontsLabel.textColor = LABEL_MAIN_COLOR
        }
    }
    @IBOutlet var greatFontsLabel: UILabel! {
        didSet {
            greatFontsLabel.textColor = LABEL_MAIN_COLOR
        }
    }
    @IBOutlet var fontCollectionView: UICollectionView! {
        didSet {
            fontCollectionView.backgroundColor = UIColor.clear
        }
    }
    @IBOutlet var continueButton: UIButton! {
        didSet {
            continueButton.layer.cornerRadius = continueButton.frame.height/4
            continueButton.clipsToBounds = true
            continueButton.backgroundColor = BUTTON_MAIN_COLOR
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        shimmeringView.contentView = continueButton
        shimmeringView.isShimmering = true
        shimmeringView.shimmerAnimationOpacity = 0.8
        shimmeringView.shimmerSpeed = 330
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ShowroomModel.KeyboardImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "showroomCell", for: indexPath) as! ShowroomCell
        cell.setup(image: ShowroomModel.KeyboardImages[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let flowayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowayout?.minimumInteritemSpacing ?? 0.0) + (flowayout?.sectionInset.left ?? 0.0) + (flowayout?.sectionInset.right ?? 0.0)
        let size:CGFloat = (collectionView.frame.size.width - space) / 2.0
        return CGSize(width: size, height: size)
        
    }
    
    @IBAction func onTapContinue(_ sender: Any) {
        let subscribeViewController = storyboard?.instantiateViewController(withIdentifier: "SubscribeViewController") as! SubscribeViewController
        subscribeViewController.modalPresentationStyle = .fullScreen
        self.present(subscribeViewController, animated: true, completion: nil)
    }
    
}
