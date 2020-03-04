//
//  EmojiKeyboard.swift
//  MyKeyboard
//
//  Created by Irakli on 1/29/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import KeyboardKit

struct EmojiKeyboard: DemoKeyboard {
    
    init(in viewController: KeyboardViewController) {
        self.bottomActions = EmojiKeyboard.EmojiActions
    }
    
    var actions: [KeyboardAction] = [
        .character("(* ^ ω ^)"),
        .character("(o^▽^o)"),
        .character("ヽ(・∀・)ﾉ"),
        .character("(o･ω･o)"),
        .character("(^人^)"),
        .character("( ´ ω ` )"),
        .character("(´• ω •`)"),
        .character("╰(▔∀▔)╯"),
        .character("(⌒‿⌒)"),
        .character("(*°▽°*)"),
        .character("(´｡• ᵕ •｡`)"),
        .character("ヽ(>∀<☆)ノ"),
        .character("＼(￣▽￣)／"),
        .character("(o˘◡˘o)"),
        .character("(╯✧▽✧)╯"),
        .character("( ‾́ ◡ ‾́ )"),
        .character("(๑˘︶˘๑)"),
        .character("(⁀ᗢ⁀)"),
        .character("( ˙▿˙ )"),
    ]
    
    let bottomActions: KeyboardActionRow
}

extension EmojiKeyboard {
    
    static var switchAction: KeyboardAction {
        .none
    }
    
    public static var EmojiActions: KeyboardActionRow {
        let settingsKeyboard = KeyboardAction.switchToKeyboard(.settings)
        let numeric = KeyboardAction.switchToKeyboard(.numeric)
        if isLatestPhone() {
            return [numeric, settingsKeyboard, .space, .backspace]
        } else {
            return [numeric, .switchKeyboard, settingsKeyboard, .space, .backspace]
        }
    }
}
