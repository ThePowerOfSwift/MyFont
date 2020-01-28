//
//  DemoKeyboard.swift
//  KeyboardKitExampleKeyboard
//
//  Created by Daniel Saidi on 2019-05-14.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

import KeyboardKit

/**
 This protocol is used by the demo application keyboards and
 provides shared functionality.
 
 The demo keyboards are for demo purposes, so they lack some
 functionality, like adapting to other languages, device types etc.
 */
protocol DemoKeyboard {}

extension DemoKeyboard {
    
    static func bottomActions(leftmost: KeyboardAction, for vc: KeyboardViewController) -> KeyboardActionRow {
        let actions = [leftmost, .switchKeyboard, .space, .newLine]
//        let isEmoji = vc.keyboardType == .emojis
//        let isImage = vc.keyboardType == .images
//        let includeImageActions = !isEmoji && !isImage
        return actions
    }
}

private extension DemoKeyboard {
    
    static func switchAction(for vc: KeyboardViewController) -> KeyboardAction {
        let needsSwitch = vc.needsInputModeSwitchKey
        return needsSwitch ? .switchKeyboard : .switchToKeyboard(.emojis)
    }
    
    static func imageAction(for vc: KeyboardViewController) -> KeyboardAction {
        let needsSwitch = vc.needsInputModeSwitchKey
        return needsSwitch ? .switchToKeyboard(.emojis) : .switchToKeyboard(.images)
    }
}

private extension Collection where Element == KeyboardAction {
    
    var withoutImageActions: [KeyboardAction] {
        self.filter { $0 != .switchToKeyboard(.emojis) }
            .filter { $0 != .switchToKeyboard(.images) }
    }
}
