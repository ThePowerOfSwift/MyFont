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

    var shimmerView: ShimmeringView = ShimmeringView(frame: CGRect.zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Asset.Colors.background.color
        keyboardActionHandler = DemoKeyboardActionHandler(inputViewController: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupKeyboard()
        guard PersistencyManager.shared.isSubscriptionActive() == true else {
            setupLock()
            return
        }
    }
    
    private func setupLock() {
        shimmerView = ShimmeringView(frame: CGRect(x: 0, y: 0, width: view.bounds.width*0.8, height: view.bounds.height/3))
        let subscribeView = UIView.fromNibTyped(owner: self, named: "SubscribeButton", in: .main) as! SubscribeButton
        shimmerView.center = view.center
        shimmerView.shimmerAnimationOpacity = 0.5
        shimmerView.shimmerSpeed = 330
        shimmerView.contentView = subscribeView
        shimmerView.isShimmering = true
        view.addSubview(shimmerView)
        
        subscribeView.unlockButton.addTapAction {
//            self.openContainerApp()
        }
        
    }
    
    @objc func openURL(_ url: URL) {
        return
    }

    private func openContainerApp() {
        var responder: UIResponder? = self as UIResponder
        let selector = #selector(openURL(_:))

        while responder != nil {
            if responder!.responds(to: selector) && responder != self {
                responder!.perform(selector, with: URL(string: "Fontspace://")!)
                return
            }
            responder = responder?.next
        }
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
