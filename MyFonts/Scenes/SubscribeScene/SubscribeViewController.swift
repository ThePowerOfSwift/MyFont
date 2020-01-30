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
    
    @IBOutlet var collectionViewLayout: UPCarouselFlowLayout! {
        didSet {
            collectionViewLayout.itemSize = CGSize(width: 200, height: 200)
        }
    }
    @IBOutlet var collectionVIew: UICollectionView! {
        didSet {
            collectionVIew.backgroundColor = UIColor.clear
        }
    }
    @IBOutlet var subscribeButton: UIButton! {
        didSet {
            subscribeButton.layer.cornerRadius = subscribeButton.frame.height/2
            subscribeButton.clipsToBounds = true
        }
    }
    
    @IBOutlet var shimmeringView: ShimmeringView!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var subscriptionTOSTextView: UITextView! {
        didSet {
            subscriptionTOSTextView.text = SubsribtionTOS
        }
    }
    
    @IBOutlet var subscriptionOfferLabel: UILabel! {
        didSet {
            subscriptionOfferLabel.text = SubscriptionOffer
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
        
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        shimmeringView.contentView = subscribeButton
        shimmeringView.isShimmering = true
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.autoScroll), userInfo: nil, repeats: true)
    }
    
    var step = 0
    
    @objc func autoScroll() {
        step = step + 1
        collectionVIew.scrollToItem(at: IndexPath(row: step%3, section: 0), at: .centeredHorizontally, animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height - collectionVIew.frame.height)
    }
    
    @IBAction func onSubscribeTap(_ sender: UIButton) {
        let successViewController = storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController
        successViewController.modalPresentationStyle = .fullScreen
        self.present(successViewController, animated: true, completion: nil)
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
