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

class SubscribeViewController: UIViewController {
    
    // MARK: Outlets & Properties
    @IBOutlet var collectionViewLayout: UPCarouselFlowLayout! {
        didSet {
//            collectionViewLayout.itemSize = CGSize(width: 200, height: 200)
            collectionViewLayout.spacingMode = UPCarouselFlowLayoutSpacingMode.fixed(spacing: 20)
        }
    }
    @IBOutlet var collectionVIew: UICollectionView! {
        didSet {
            collectionVIew.backgroundColor = UIColor.clear
        }
    }
    
    @IBOutlet var tableView: UITableView! {
        didSet {
            tableView.isScrollEnabled = false
        }
    }
    
    @IBOutlet var subscribeButton: UIButton! {
        didSet {
            subscribeButton.layer.cornerRadius = subscribeButton.frame.height/4
            subscribeButton.clipsToBounds = true
            subscribeButton.setTitle(NSLocalizedString("subscribe.purchasebutton.title", comment: "Try for Free"), for: .normal)
            subscribeButton.backgroundColor = THEME_MAIN_COLOR
        }
    }
    @IBOutlet var settingsButton: UIButton! {
        didSet {
            settingsButton.tintColor = THEME_MAIN_COLOR
        }
    }
    @IBOutlet var shimmeringView: ShimmeringView!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var subscriptionTOSTextView: UITextView! {
        didSet {
            subscriptionTOSTextView.text = subscribeViewModel.SubsribtionTOS
            subscriptionTOSTextView.delaysContentTouches = false
            subscriptionTOSTextView.translatesAutoresizingMaskIntoConstraints = true
            subscriptionTOSTextView.isScrollEnabled = false
            subscriptionTOSTextView.sizeToFit()
        }
    }
    @IBOutlet var subscriptionOfferLabel: UILabel! {
        didSet {
            subscriptionOfferLabel.text = subscribeViewModel.SubscriptionOffer
            subscriptionOfferLabel.textColor = LABEL_MAIN_COLOR
        }
    }
    @IBOutlet var titleLabel: UILabel! {
        didSet {
            titleLabel.text = SubscribeModel.Title
            titleLabel.textColor = LABEL_MAIN_COLOR
        }
    }
    @IBOutlet var titleImages: [UIImageView]! {
        didSet {
            for imageView in titleImages! {
                imageView.image = UIImage(named: "diamond")?.withRenderingMode(.alwaysTemplate)
                imageView.tintColor = THEME_MAIN_COLOR
            }
        }
    }
    
    @IBOutlet var tosLabel: UIButton! {
        didSet {
            tosLabel.setTitle(NSLocalizedString("subscribe.button.tos", comment: ""), for: .normal)
        }
    }
    
    @IBOutlet var restoreLabel: UIButton! {
        didSet {
            restoreLabel.setTitle(NSLocalizedString("subscribe.button.restore", comment: ""), for: .normal)
        }
    }
    
    @IBOutlet var privacyLabel: UIButton! {
        didSet {
            privacyLabel.setTitle(NSLocalizedString("subscribe.button.privacy", comment: ""), for: .normal)
        }
    }
    
    private var subscribeViewModel = SubscribeModel()
    private var scrollingStep = 0
    
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLocalizedIAP()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        shimmeringView.contentView = subscribeButton
        shimmeringView.isShimmering = true
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self.autoScroll), userInfo: nil, repeats: true)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height - collectionVIew.frame.height + subscriptionTOSTextView.frame.height)
        
    }
    
    override func viewWillLayoutSubviews() {
//        collectionViewLayout.itemSize = CGSize(width: view.frame.width, height: 100)
//        collectionViewLayout.sectionInset = UIEdgeInsets(top: 0, left: 100, bottom: 0, right: 100)
        
    }
    
    // MARK: Actions
    @IBAction func onSubscribeTap(_ sender: UIButton) {
        purchaseWeeklySubscription()
    }
    
    // MARK: TODO
    @IBAction func onRestoreTap(_ sender: UIButton) {
        
        //        restorePurchases()
    }
    
    @IBAction func onPrivacyPolicyTap(_ sender: UIButton) {
        
    }
    
    @IBAction func onTermsofServiceTap(_ sender: UIButton) {
        
    }
    
    @IBAction func onTapSettings(_ sender: UIButton) {
        goToFinalVC()
    }
    
    private func goToFinalVC() {
        let successViewController = storyboard?.instantiateViewController(withIdentifier: "SuccessViewController") as! SuccessViewController
        successViewController.modalPresentationStyle = .fullScreen
        self.present(successViewController, animated: true, completion: nil)
    }
    
}

// MARK: In App Purchases

extension SubscribeViewController {
    
    private func updateLocalizedIAP() {
        _ = RebeloperStore.inAppPurchases.observeNext { (purchases) in
            for purchase in purchases {
                self.subscribeViewModel = SubscribeModel(localizedPrice: purchase.price)
                self.subscriptionOfferLabel.text = self.subscribeViewModel.SubscriptionOffer
            }
        }
    }
    
    // MARK: TODO change subscription
    private func purchaseWeeklySubscription() {
        
        RebeloperStore.purchase("autoRenewableWeekly") { (result) in
            if result == true {
                PersistencyManager.shared.setSubscriptionActive(withDate: Date())
                self.goToFinalVC()
            }
        }
    }
    
    private func restorePurchases() {
        RebeloperStore.restorePurchases { (result) in
            if result == true {
                PersistencyManager.shared.setSubscriptionActive(withDate: Date())
                self.goToFinalVC()
            }
        }
    }
}

extension SubscribeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    @objc func autoScroll() {
        scrollingStep = scrollingStep + 1
        collectionVIew.scrollToItem(at: IndexPath(row: scrollingStep%SubscribeModel.ShowroomKeyboardsAmount, section: 0), at: .centeredHorizontally, animated: true)
    }
    
    // todo change
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        SubscribeModel.ShowroomKeyboardsAmount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath) as! SubscribeCell
        cell.setup(index: indexPath.row)
        return cell
    }
}

extension SubscribeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        SubscribeModel.Offer.Offers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "offerCell") as! OfferCell
        let offerConfig = SubscribeModel.Offer.Offers[indexPath.row]
        cell.setup(image: offerConfig.icon, text: offerConfig.title)
        return cell
    }
}
