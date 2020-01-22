//
//  FontKeyoboardModel.swift
//  MyFonts
//
//  Created by Irakli on 1/22/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation

struct FontKeyboard {
    struct ViewModel {
        struct UserKeyboard {
            var title: String
            var characters: [[String]]
            var upperCharacters: [[String]]?
            var id: Int
        }
        
        static let keyboards: [UserKeyboard] = [
            UserKeyboard(title: "Standard",
                         
                         characters: [["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],
                                      ["a", "s", "d", "f", "g", "h", "j", "k", "l"],
                                      ["z", "x", "c", "v", "b", "n", "m"]],
                         id: 0),
            UserKeyboard(title: "Emoji",
                         characters: [["𓂸","𓂺","𓂀","✞","シ","㋛","ଈ","♡"],
                                      ["ꨄ","𓄁","𓃠","𓆉","𓅿","𐂃","𖠌","⚣"],
                                      ["𓃰","𓃟","𓆏","𓂉","☻"]],
                         id: 1),
            UserKeyboard(title: "𝚃𝚢𝚙𝚎𝚠𝚛𝚒𝚝𝚎𝚛",
                         characters: [["𝚚","𝚠","𝚎","𝚛","𝚝","𝚢","𝚞","𝚒","𝚘","𝚙"],
                                      ["𝚊","𝚜","𝚍","𝚏","𝚐","𝚑","𝚓","𝚔","𝚕"],
                                      ["𝚣","𝚡","𝚌","𝚟","𝚋","𝚗","𝚖"]],
                         id: 2),
            UserKeyboard(title: "𝕆𝕦𝕥𝕝𝕚𝕟𝕖",
                         characters: [["𝕢","𝕨","𝕖","𝕣","𝕥","𝕪","𝕦","𝕚","𝕠","𝕡"],
                                      ["𝕒","𝕤","𝕕","𝕗","𝕘","𝕙","𝕛","𝕜","𝕝"],
                                      ["𝕫","𝕩","𝕔","𝕧","𝕓","𝕟","𝕞"]],
                         id: 3),
            UserKeyboard(title: "𝒮𝒸𝓋𝒾𝓅𝓉",
                         characters: [["𝓆","𝓌","ℯ","𝓇","𝓉","𝓎","𝓊","𝒾","ℴ","𝓅"],
                                      ["𝒶","𝓈","𝒹","𝒻","ℊ","𝒽","𝒿","𝓀","𝓁"],
                                      ["𝓏","𝓍","𝒸","𝓋","𝒷","𝓃","𝓂"]],
                         id: 4)
        ]
    }
}


