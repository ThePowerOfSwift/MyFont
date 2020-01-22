//
//  KeyboardManager.swift
//  KeyboardKitDemoKeyboard
//
//  Created by Irakli on 1/20/20.
//

import Foundation
import KeyboardKit

class KeyboardManager {
    static let sharedInstance = KeyboardManager(keyboard: .alphabetic(uppercased: false))
    
    var currentKeyboard: KeyboardType
    
    private init(keyboard: KeyboardType) {
        self.currentKeyboard = keyboard
    }
}
