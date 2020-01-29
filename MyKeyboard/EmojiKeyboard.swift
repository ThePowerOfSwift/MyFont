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

private extension EmojiKeyboard {
    
    static var switchAction: KeyboardAction {
        .none
    }
    
    static var EmojiActions: KeyboardActionRow {
        if isLatestPhone() {
            return [.backspace, .space, .newLine]
        } else {
            return [.switchKeyboard, .space, .backspace, .newLine]
        }
    }
}
