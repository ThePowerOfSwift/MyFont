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

    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyboardActionHandler = DemoKeyboardActionHandler(inputViewController: self)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupKeyboard()
//        lockKeyboard()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        setupKeyboard()
    }
    
    private func lockKeyboard() {
        // Setup ShimmeringView
        let shimmerView = ShimmeringView(frame: view.bounds)
        
        let subscribeButton = UIButton.fromNibTyped(owner: self, named: "SubscribeButton", in: .main)
        subscribeButton.alpha = 0.85
        // Setup the view you want shimmered
        // Add the view you want shimmered to the `shimmerView`
        shimmerView.contentView = subscribeButton
        view.addSubview(shimmerView)
        // Start shimmering
        shimmerView.isShimmering = true

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
