//
//  KeyboardViewController.swift
//  MyKeyboard
//
//  Created by Irakli on 1/22/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import UIKit
import KeyboardKit
import ShimmerSwift

class KeyboardViewController: KeyboardInputViewController {

    var shimmerView: ShimmeringView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyboardActionHandler = DemoKeyboardActionHandler(inputViewController: self)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupKeyboard()
        setupLock()
    }
    
    private func setupLock() {
        shimmerView = ShimmeringView(frame: CGRect(x: 0, y: 0, width: view.bounds.width*0.8, height: view.bounds.height/3))
        let subscribeButton = UIButton.fromNibTyped(owner: self, named: "SubscribeButton", in: .main)
        shimmerView.center = view.center
        shimmerView.shimmerAnimationOpacity = 0.5
        shimmerView.shimmerSpeed = 330
        shimmerView.contentView = subscribeButton
        shimmerView.isShimmering = true
        subscribeButton.layer.cornerRadius = subscribeButton.frame.height/4
        subscribeButton.clipsToBounds = true
        view.addSubview(shimmerView)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        setupKeyboard()
    }
    

    // MARK: - Keyboard Functionality
    
    override func textDidChange(_ textInput: UITextInput?) {
        super.textDidChange(textInput)
    }
    
    override func selectionWillChange(_ textInput: UITextInput?) {
        super.selectionWillChange(textInput)
    }
    
    override func selectionDidChange(_ textInput: UITextInput?) {
        super.selectionDidChange(textInput)
    }
    
    
    // MARK: - Properties
    
    let alerter = ToastAlert()
    
    var keyboardType = KeyboardType.alphabetic(uppercased: false) {
        didSet { setupKeyboard() }
    }
    
}
