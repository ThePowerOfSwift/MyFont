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
            collectionViewLayout.itemSize = CGSize(width: 200, height: 200)
        }
    }
    @IBOutlet var collectionVIew: UICollectionView! {
        didSet {
            collectionVIew.backgroundColor = UIColor.clear
        }
    }
    
    @IBOutlet var tableView: UITableView! {
        didSet {

        }
    }
    
    @IBOutlet var subscribeButton: UIButton! {
        didSet {
            subscribeButton.layer.cornerRadius = subscribeButton.frame.height/4
            subscribeButton.clipsToBounds = true
            subscribeButton.setTitle(NSLocalizedString("subscribe.purchasebutton.title", comment: "Try for Free"), for: .normal)
        }
    }
    @IBOutlet var settingsButton: UIButton! {
        didSet {
            settingsButton.tintColor = BUTTON_MAIN_COLOR
        }
    }
    @IBOutlet var shimmeringView: ShimmeringView!
    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var subscriptionTOSTextView: UITextView! {
        didSet {
            subscriptionTOSTextView.text = subscribeViewModel.SubsribtionTOS
        }
    }
    @IBOutlet var subscriptionOfferLabel: UILabel! {
        didSet {
            subscriptionOfferLabel.text = subscribeViewModel.SubscriptionOffer
        }
    }
    @IBOutlet var titleLabel: UILabel! {
        didSet {
            titleLabel.text = SubscribeModel.Title
            titleLabel.textColor = BUTTON_MAIN_COLOR
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
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height - collectionVIew.frame.height + 100)
    }
    
    // MARK: Actions
    @IBAction func onSubscribeTap(_ sender: UIButton) {
        purchaseWeeklySubscription()
    }
    
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
        collectionVIew.scrollToItem(at: IndexPath(row: scrollingStep%3, section: 0), at: .centeredHorizontally, animated: true)
    }
    
    // todo change
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        3
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
