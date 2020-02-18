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
    @IBOutlet var titleLabel: UILabel! {
        didSet {
            titleLabel.text = NSLocalizedString("ShowroomModel.Title", comment: "")
            titleLabel.textColor = LABEL_MAIN_COLOR
        }
    }
    @IBOutlet var descriptionLabel: UILabel! {
        didSet {
            descriptionLabel.text = NSLocalizedString("ShowroomModel.Description", comment: "")
            descriptionLabel.textColor = LABEL_MAIN_COLOR
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
    
    private lazy var imageAspect:CGFloat = {
        return aspectOf(image: "keyboard0")
    }()
    

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
    
    private func aspectOf(image:String) -> CGFloat {
        let image = UIImage(named: image)
        let width = image!.size.width
        let height = image!.size.height
        return CGFloat(width/height)
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
        let width = view.frame.width - 80
        return CGSize(width: width, height: width/imageAspect)
        
    }
    
    @IBAction func onTapContinue(_ sender: Any) {
        let subscribeViewController = storyboard?.instantiateViewController(withIdentifier: "SubscribeViewController") as! SubscribeViewController
        subscribeViewController.modalPresentationStyle = .fullScreen
        self.present(subscribeViewController, animated: true, completion: nil)
    }
}
