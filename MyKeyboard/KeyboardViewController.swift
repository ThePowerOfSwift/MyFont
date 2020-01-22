//
//  KeyboardViewController.swift
//  MyKeyboard
//
//  Created by Irakli on 1/22/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import UIKit
import KeyboardKit

class KeyboardViewController: KeyboardInputViewController {

    
    // MARK: - View Controller Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        keyboardActionHandler = DemoKeyboardActionHandler(inputViewController: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupKeyboard()
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
