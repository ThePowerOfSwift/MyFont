//
//  AlphabeticKeyboard.swift
//  KeyboardKitExampleKeyboard
//
//  Created by Daniel Saidi on 2019-05-13.
//  Copyright © 2019 Daniel Saidi. All rights reserved.
//

import KeyboardKit

/**
 This demo keyboard mimicks an English alphabetic keyboard.
 */
struct AlphabeticKeyboard: DemoKeyboard {
    
    init(uppercased: Bool, in viewController: KeyboardViewController) {
        actions = AlphabeticKeyboard.actions(
            uppercased: uppercased,
            in: viewController)
    }
    
    let actions: KeyboardActionRows
}

extension AlphabeticKeyboard {
    
    static func actions(
        uppercased: Bool,
        in viewController: KeyboardViewController) -> KeyboardActionRows {
        KeyboardActionRows
            .from(characters(uppercased: uppercased))
            .addingSideActions(uppercased: uppercased)
            .appending(bottomActions(leftmost: switchAction, for: viewController))
    }
    
    static var characters: [[String]] = [
        ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
        ["a", "s", "d", "f", "g", "h", "j", "k", "l"],
        ["z", "x", "c", "v", "b", "n", "m"]
    ]
    
    static var upperCasedCharacters: [[String]] = []
    
    static func characters(uppercased: Bool) -> [[String]] {
        guard uppercased == true else { return characters }
        guard needsUppercasedChars() == true else { return characters.uppercased() }
        
        return upperCasedCharacters
    }
    
    static var switchAction: KeyboardAction {
        .switchToKeyboard(.numeric)
    }
    
    static private func needsUppercasedChars() -> Bool {
        return upperCasedCharacters.count > 0 ? true : false
    }
}

extension Sequence where Iterator.Element == KeyboardActionRow {
    
    func addingSideActions(uppercased: Bool) -> [Iterator.Element] {
        var result = map { $0 }
        result[2].insert(uppercased ? .shiftDown : .shift, at: 0)
        result[2].insert(.none, at: 1)
        result[2].append(.none)
        result[2].append(.backspace)
        return result
    }
}
