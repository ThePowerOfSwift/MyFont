//
//  SubscribeViewController.swift
//  MyFonts
//
//  Created by Irakli on 1/23/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import UIKit
import UPCarouselFlowLayout
import ShimmerSwift


class SubscribeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var collectionViewLayout: UPCarouselFlowLayout!
    @IBOutlet var subscribeButton: UIButton! {
        didSet {
            subscribeButton.layer.cornerRadius = subscribeButton.frame.height/2
            subscribeButton.clipsToBounds = true
        }
    }
    
    @IBOutlet var shimmeringView: ShimmeringView!
    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
//        shimmerView.frame = subscribeButton.frame
        shimmeringView.contentView = subscribeButton
        shimmeringView.isShimmering = true
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height)
    }
    
    @IBAction func onSubscribeTap(_ sender: UIButton) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! SubscribeCell
        cell.setup(index: indexPath.row)
        return cell
    }
    
}
