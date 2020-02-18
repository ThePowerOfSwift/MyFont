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
//            UserKeyboard(title: "♡⍟𓂀𓃠",
//                         characters: [["𓂀","✞","シ","㋛","ଈ","♡",
//                                       "ꨄ","𓄁","𓃠","𓆉","𓅿","𐂃","𖠌","⚣",
//                                       "𓃰","𓃟","𓆏","𓂉","☻","𓂸","𓂺",
//                                       "𓀔","𓀗","𓀛","𓀟","𓀡","𓀩","𓀬","𓀭","𓁃","𓁉",
//                                       "𓁠","𓁢","𓁨","𓁩","𓁶","𓁷","𓁲",
//                                       "𓃒","𓃓","𓃔","𓃗","𓃘","𓃙","𓃚","𓃞","𓃠","𓃢","𓃭",
//                                       "𓃯","𓃰","𓃱","𓃲","𓃵","𓃸","𓃺","𓃻","𓃾","𓄀",
//                                       "𓄁","𓄂","𓄃","𓄅","𓄇","𓅃","𓅰","𓅿",
//                                       "᪥","✯","𖣔","𖧷","߷","༆","༄","Ꙭ","⁂","⌘",
//                                       "☼","۞","⍟","𖣘","𓇽","𖦹","❁","᯾",
//                                       "★","☆","✫","✰","᯽","✪","𒊹"
//                            ],[],[]],
//                         id: 1),
            
            UserKeyboard(title: "𝚃𝚢𝚙𝚎𝚠𝚛𝚒𝚝𝚎𝚛",
                         characters: [["𝚚","𝚠","𝚎","𝚛","𝚝","𝚢","𝚞","𝚒","𝚘","𝚙"],
                                      ["𝚊","𝚜","𝚍","𝚏","𝚐","𝚑","𝚓","𝚔","𝚕"],
                                      ["𝚣","𝚡","𝚌","𝚟","𝚋","𝚗","𝚖"]],
                         upperCharacters: [["𝚀","𝚆","𝙴","𝚁","𝚃","𝚈","𝚄","𝙸","𝙾","𝙿"],
                                           ["𝙰","𝚂","𝙳","𝙵","𝙶","𝙷","𝙹","𝙺","𝙻"],
                                           ["𝚉","𝚇","𝙲","𝚅","𝙱","𝙽","𝙼"]],
                         
                         id: 2),
            UserKeyboard(title: "𝕆𝕦𝕥𝕝𝕚𝕟𝕖",
                         characters: [["𝕢","𝕨","𝕖","𝕣","𝕥","𝕪","𝕦","𝕚","𝕠","𝕡"],
                                      ["𝕒","𝕤","𝕕","𝕗","𝕘","𝕙","𝕛","𝕜","𝕝"],
                                      ["𝕫","𝕩","𝕔","𝕧","𝕓","𝕟","𝕞"]],
                         upperCharacters: [["ℚ","𝕎","𝔼","ℝ","𝕋","𝕐","𝕌","𝕀","𝕆","ℙ"],
                                           ["𝔸","𝕊","𝔻","𝔽","𝔾","ℍ","𝕁","𝕂","𝕃"],
                                           ["ℤ","𝕏","ℂ","𝕍","𝔹","ℕ","𝕄"]],
                         
                         id: 3),
            UserKeyboard(title: "𝓅𝒶𝓇𝒾𝓈",
                         characters: [["𝓆","𝓌","ℯ","𝓇","𝓉","𝓎","𝓊","𝒾","ℴ","𝓅"],
                                      ["𝒶","𝓈","𝒹","𝒻","ℊ","𝒽","𝒿","𝓀","𝓁"],
                                      ["𝓏","𝓍","𝒸","𝓋","𝒷","𝓃","𝓂"]],
                         id: 4),
            UserKeyboard(title: "᪥✯⁂𖧷",
                         characters: [["𓂀","✞","シ","㋛","ଈ","♡",
                                       "ꨄ","𓄁","𓃠","𓆉","𓅿","𐂃","𖠌","⚣",
                                       "𓃰","𓃟","𓆏","𓂉","☻","𓂸","𓂺","᪥","✯","𖣔","𖧷","߷","༆","༄","Ꙭ","⁂","⌘",
                                       "☼","۞","⍟","𖣘","𓇽","𖦹","❁","᯾",
                                       "★","☆","✫","✰","᯽","✪","𒊹"
               ],[],[]],
            
            id: 1),
            UserKeyboard(title: "𓀔𓀗𓀛𓀟",
            characters: [["𓀔","𓀗","𓀛","𓀟","𓀡","𓀩","𓀬","𓀭","𓁃","𓁉",
                          "𓁠","𓁢","𓁨","𓁩","𓁶","𓁷","𓁲",
                          "𓃒","𓃓","𓃔","𓃗","𓃘","𓃙","𓃚","𓃞","𓃠","𓃢","𓃭",
                          "𓃯","𓃰","𓃱","𓃲","𓃵","𓃸","𓃺","𓃻","𓃾","𓄀",
                          "𓄁","𓄂","𓄃","𓄅","𓄇","𓅃","𓅰","𓅿"
               ],[],[]],
            id: 1),
            UserKeyboard(title: "ᴛɪɴʏ ʙɪɢ",
                         characters: [["ǫ","ᴡ","ᴇ","ʀ","ᴛ","ʏ","ᴜ","ɪ","ᴏ","ᴘ"],
                                      ["ᴀ","s","ᴅ","ғ","ɢ","ʜ","ᴊ","ᴋ","ʟ"],
                                      ["ᴢ","x","ᴄ","ᴠ","ʙ","ɴ","ᴍ"]],
                         id: 5),
            
            
            UserKeyboard(title: "ƈʊʀʋɛ",
                         characters: [["զ","ա","ɛ","ʀ","ȶ","ʏ","ʊ","ɨ","օ","ք"],
                                      ["ǟ","ֆ","ɖ","ʄ","ɢ","ɦ","ʝ","ӄ","ʟ"],
                                      ["ʐ","Ӽ","ƈ","ʋ","ɮ","ռ","ʍ"]],
                         id: 5),
            UserKeyboard(title: "ᏟᏒᏗᎶᏋ",
                         characters: [["Ꭴ","Ꮗ","Ꮛ","Ꮢ","Ꮦ","Ꭹ","Ꮼ","Ꭵ","Ꭷ","Ꭾ"],
                                      ["Ꮧ","Ꮥ","Ꮄ","Ꭶ","Ꮆ","Ꮒ","Ꮰ","Ꮶ","Ꮭ"],
                                      ["ፚ","ጀ","Ꮯ","Ꮙ","Ᏸ","Ꮑ","Ꮇ"]],
                         id: 5),
            UserKeyboard(title: "Z̶o̶r̶r̶o̶",
                         characters: [["q̶","w̶","e̶","r̶","t̶","y̶","u̶","i̶","o̶","p̶"],
                                      ["a̶","s̶","d̶","f̶","g̶","h̶","j̶","k̶","l̶"],
                                      ["z̶","x̶","c̶","v̶","b̶","n̶","m̶"]],
                         upperCharacters:
                [["Q̶","W̶","E̶","R̶","T̶","Y̶","U̶","I̶","O̶","P̶"],
                 ["A̶","S̶","D̶","F̶","G̶","H̶","J̶","K̶","L̶"],
                 ["Z̶","X̶","C̶","V̶","B̶","N̶","M̶"]],
                         id: 5),
            
            UserKeyboard(title: "C̸R̸O̸S̸S̸E̸D̸",
                         characters: [["q̸","w̸","e̸","r̸","t̸","y̸","u̸","i̸","o̸","p̸"],
                                      ["a̸","s̸","d̸","f̸","g̸","h̸","j̸","k̸","l̸"],
                                      ["z̸","x̸","c̸","v̸","b̸","n̸","m̸"]],
                         upperCharacters:
                [["Q̸","W̸","E̸","R̸","T̸","Y̸","U̸","I̸","O̸","P̸"],
                 ["A̸","S̸","D̸","F̸","G̸","H̸","J̸","K̸","L̸"],
                 ["Z̸","X̸","C̸","V̸","B̸","N̸","M̸"]],
                         
                         id: 5),
            UserKeyboard(title: "m̰̃õ̰ṵ̃s̰̃t̰̃ã̰c̰̃h̰̃ḛ̃",
                         characters: [["q̰̃","w̰̃","ḛ̃","r̰̃","t̰̃","ỹ̰","ṵ̃","ḭ̃","õ̰","p̰̃"],
                                      ["ã̰","s̰̃","d̰̃","f̰̃","g̰̃","h̰̃","j̰̃","k̰̃","l̰̃"],
                                      ["z̰̃","x̰̃","c̰̃","ṽ̰","b̰̃","ñ̰","m̰̃"]],
                         upperCharacters:
                [["Q̰̃","W̰̃","Ḛ̃","R̰̃","T̰̃","Ỹ̰","Ṵ̃","Ḭ̃","Õ̰","P̰̃"],
                 ["Ã̰","S̰̃","D̰̃","F̰̃","G̰̃","H̰̃","J̰̃","K̰̃","L̰̃"],
                 ["Z̰̃","X̰̃","C̰̃","Ṽ̰","B̰̃","Ñ̰","M̰̃"]],
                         id: 5),
            UserKeyboard(title: "r̾o̾a̾s̾t̾e̾d̾",
                         characters: [["q̾","w̾","e̾","r̾","t̾","y̾","u̾","i̾","o̾","p̾"],
                                      ["a̾","s̾","d̾","f̾","g̾","h̾","j̾","k̾","l̾"],
                                      ["z̾","x̾","c̾","v̾","b̾","n̾","m̾"]],
                         upperCharacters:
                [["Q̾","W̾","E̾","R̾","T̾","Y̾","U̾","I̾","O̾","P̾"],
                 ["A̾","S̾","D̾","F̾","G̾","H̾","J̾","K̾","L̾"],
                 ["Z̾","X̾","C̾","V̾","B̾","N̾","M̾"]],
                         id: 5),
            UserKeyboard(title: "a⃣b⃣c⃣",
                         characters: [["q⃣","w⃣","e⃣","r⃣","t⃣","y⃣","u⃣","i⃣","o⃣","p⃣"],
                                      ["a⃣","s⃣","d⃣","f⃣","g⃣","h⃣","j⃣","k⃣","l⃣"],
                                      ["z⃣","x⃣","c⃣","v⃣","b⃣","n⃣","m⃣"]],
                         upperCharacters:
                [["Q⃣","W⃣","E⃣","R⃣","T⃣","Y⃣","U⃣","I⃣","O⃣","P⃣"],
                 ["A⃣","S⃣","D⃣","F⃣","G⃣","H⃣","J⃣","K⃣","L⃣"],
                 ["Z⃣","X⃣","C⃣","V⃣","B⃣","N⃣","M⃣"]],
                         id: 5),
            UserKeyboard(title: "s͙n͙o͙w͙",
                         characters: [["q͙","w͙","e͙","r͙","t͙","y͙","u͙","i͙","o͙","p͙"],
                                      ["a͙","s͙","d͙","f͙","g͙","h͙","j͙","k͙","l͙"],
                                      ["z͙","x͙","c͙","v͙","b͙","n͙","m͙"]],
                         upperCharacters:
                [["Q͙","W͙","E͙","R͙","T͙","Y͙","U͙","I͙","O͙","P͙"],
                 ["A͙","S͙","D͙","F͙","G͙","H͙","J͙","K͙","L͙"],
                 ["Z͙","X͙","C͙","V͙","B͙","N͙","M͙"]],
                         
                         id: 5),
            UserKeyboard(title: "f▴o▴n▴t▴",
                         characters: [["q▴","w▴","e▴","r▴","t▴","y▴","u▴","i▴","o▴","p▴"],
                                      ["a▴","s▴","d▴","f▴","g▴","h▴","j▴","k▴","l▴"],
                                      ["z▴","x▴","c▴","v▴","b▴","n▴","m▴"]],
                         upperCharacters:
                [["Q▴","W▴","E▴","R▴","T▴","Y▴","U▴","I▴","O▴","P▴"],
                 ["A▴","S▴","D▴","F▴","G▴","H▴","J▴","K▴","L▴"],
                 ["Z▴","X▴","C▴","V▴","B▴","N▴","M▴"]],
                         id: 5),
            UserKeyboard(title: "A҈N҈T҈S҈",
                         characters: [["q҈","w҈","e҈","r҈","t҈","y҈","u҈","i҈","o҈","p҈"],
                                      ["a҈","s҈","d҈","f҈","g҈","h҈","j҈","k҈","l҈"],
                                      ["z҈","x҈","c҈","v҈","b҈","n҈","m҈"]],
                         upperCharacters:
                [["Q҈","W҈","E҈","R҈","T҈","Y҈","U҈","I҈","O҈","P҈"],
                 ["A҈","S҈","D҈","F҈","G҈","H҈","J҈","K҈","L҈"],
                 ["Z҈","X҈","C҈","V҈","B҈","N҈","M҈"]],
                         id: 5),
            UserKeyboard(title: "ƒσηт",
                         characters: [["۹","ω","є","я","т","у","υ","ι","σ","ρ"],
                                      ["α","ѕ","∂","ƒ","ﻭ","н","נ","к","ℓ"],
                                      ["չ","χ","¢","ν","в","η","м"]],
                         id: 16),
            UserKeyboard(title: "ሀጎጕጎክኗ",
                         characters: [["ዒ","ሠ","ቿ","ዪ","ፕ","ሃ","ሁ","ጎ","ዐ","የ"],
                                      ["ል","ነ","ዕ","ቻ","ኗ","ዘ","ክ","ጕ","ረ"],
                                      ["ጊ","ሸ","ር","ሀ","ጌ","ክ","ጠ"]],
                         
                         id: 17),
            UserKeyboard(title: "ṗïṁṗḷë",
                         characters: [["q","ẅ","ë","ṛ","ẗ","ÿ","ü","ï","ö","ṗ"], //todo change q
                            ["ä","ṡ","ḋ","ḟ","ġ","ḧ","j","ḳ","ḷ"],
                            ["ż","ẍ","ċ","ṿ","ḅ","ṅ","ṁ"]],
                         id: 18),
            UserKeyboard(title: "≋w≋a≋v≋e≋",
                         characters: [["≋q≋","≋w≋","≋e≋","≋r≋","≋t≋","≋y≋","≋u≋","≋i≋","≋o≋","≋p≋"],
                            ["≋a≋","≋s≋","≋d≋","≋f≋","≋g≋","≋h≋","≋j≋","≋k≋","≋l≋"],
                            ["≋z≋","≋x≋","≋c≋","≋v≋","≋b≋","≋n≋","≋m≋"]],
                         id: 18),
        
            UserKeyboard(title: "ϯαϯσσ",
                         characters: [["զ","ϖ","ε","ɾ","ϯ","ψ","մ","ί","σ","թ"],
                                      ["α","ς","δ","ƒ","ɡ","հ","յ","ƙ","ʆ"],
                                      ["Հ","x","ɕ","ѵ","ɓ","η","ʍ"]],
                         upperCharacters: [["Q","Ẅ","Ë","Ṛ","T̈","Ÿ","Ü","Ï","Ö","Ṗ"],
                                           ["Ä","Ṡ","Ḋ","Ḟ","Ġ","Ḧ","J̈","K̈","Ḷ"],
                                           ["Ż","Ẍ","Ċ","Ṿ","Ḅ","N̈","M̈"]],
                         
                         id: 19),
            UserKeyboard(title: "🅂🅀🅄🄰🅁🄴🄳",
                         characters: [["🅀","🅆","🄴","🅁","🅃","🅈","🅄","🄸","🄾","🄿"],
                                      ["🄰","🅂","🄳","🄵","🄶","🄷","🄹","🄺","🄻"],
                                      ["🅉","🅇","🄲","🅅","🄱","🄽","🄼"]],
                         id: 20),
            UserKeyboard(title: "【a】【b】【c】",
                         characters: [["【q】","【w】","【e】","【r】","【t】","【y】","【u】","【i】","【o】","【p】"],
                                      ["【a】","【s】","【d】","【f】","【g】","【h】","【j】","【k】","【l】"],
                                      ["【z】","【x】","【c】","【v】","【b】","【n】","【m】"]],
                         upperCharacters: [["【Q】","【W】","【E】","【R】","【T】","【Y】","【U】","【I】","【O】","【P】"],
                                           ["【A】","【S】","【D】","【F】","【G】","【H】","【J】","【K】","【L】"],
                                           ["【Z】","【X】","【C】","【V】","【B】","【N】","【M】"]],
                         id: 20),
            UserKeyboard(title: "『a』『b』『c』",
                         characters: [["『q』","『w』","『e』","『r』","『t』","『y』","『u』","『i』","『o』","『p』"],
                                      ["『a』","『s』","『d』","『f』","『g』","『h』","『j』","『k』","『l』"],
                                      ["『z』","『x』","『c』","『v』","『b』","『n』","『m』"]],
                         upperCharacters: [["『Q』","『W』","『E』","『R』","『T』","『Y』","『U』","『I』","『O』","『P』"],
                                           ["『A』","『S』","『D』","『F』","『G』","『H』","『J』","『K』","『L』"],
                                           ["『Z』","『X』","『C』","『V』","『B』","『N』","『M』"]],
                         id: 20),
            
            UserKeyboard(title: "𝔊𝔬𝔱𝔶𝔦𝔠",
            characters: [["𝔮","𝔴","𝔢","𝔯","𝔱","𝔶","𝔲","𝔦","𝔬","𝔭"],
                         ["𝔞","𝔰","𝔡","𝔣","𝔤","𝔥","𝔧","𝔨","𝔩"],
                         ["𝔷","𝔵","𝔠","𝔳","𝔟","𝔫","𝔪"]],
            upperCharacters: [["𝔔","𝔚","𝔈","ℜ","𝔗","𝔜","𝔘","ℑ","𝔒","𝔓"],
                              ["𝔄","𝔖","𝔇","𝔉","𝔊","ℌ","𝔍","𝔎","𝔏"],
                              ["ℨ","𝔛","ℭ","𝔙","𝔅","𝔑","𝔐"]],
            
            id: 19),
            UserKeyboard(title: "𝖋𝖔𝖓𝖙",
            characters: [["𝖖","𝖜","𝖊","𝖗","𝖙","𝖞","𝖚","𝖎","𝖔","𝖕"],
                         ["𝖆","𝖘","𝖉","𝖋","𝖌","𝖍","𝖏","𝖐","𝖑"],
                         ["𝖟","𝖝","𝖈","𝖛","𝖇","𝖓","𝖒"]],
            upperCharacters: [["𝕼","𝖂","𝕰","𝕽","𝕿","𝖄","𝖀","𝕴","𝕺","𝕻"],
                              ["𝕬","𝕾","𝕯","𝕱","𝕲","𝕳","𝕵","𝕶","𝕷"],
                              ["𝖅","𝖃","𝕮","𝖁","𝕭","𝕹","𝕸"]],
            
            id: 19),
            UserKeyboard(title: "ⒸⒾⓇⒸⓁⒺⒹ",
            characters: [["Ⓠ","Ⓦ","Ⓔ","Ⓡ","Ⓣ","Ⓨ","Ⓤ","Ⓘ","Ⓞ","Ⓟ"],
                         ["Ⓐ","Ⓢ","Ⓓ","Ⓕ","Ⓖ","Ⓗ","Ⓙ","Ⓚ","Ⓛ"],
                         ["Ⓩ","Ⓧ","Ⓒ","Ⓥ","Ⓑ","Ⓝ","Ⓜ"]],
            id: 20),
            
            UserKeyboard(title: "🅥🅞🅘🅓",
            characters: [["🅠","🅦","🅔","🅡","🅣","🅨","🅤","🅘","🅞","🅟"],
                         ["🅐","🅢","🅓","🅕","🅖","🅗","🅙","🅚","🅛"],
                         ["🅩","🅧","🅒","🅥","🅑","🅝","🅜"]],
            id: 20),
            
            UserKeyboard(title: "꒒ꍏꀷꌩ꒦ꀷ",
            characters: [["ꆰ","ꅐ","ꏂ","ꋪ","꓄","ꌩ","ꀎ","ꀤ","ꂦ","ᖘ"],
                         ["ꍏ","ꌚ","ꀷ","ꎇ","ꁅ","ꀍ","꒻","ꀘ","꒒"],
                         ["ꁴ","ꉧ","ꏳ","꒦","ꌃ","ꈤ","ꎭ"]],
            id: 20),
        
            UserKeyboard(title: "(* ^ ω ^)",
                         characters: [["(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)","(* ^ ω ^)"],
                                      [],
                                      []],
                         id: 21),
            UserKeyboard(title: "𝐒𝐞𝐫𝐢𝐟",
                         characters: [["𝐪","𝐰","𝐞","𝐫","𝐭","𝐲","𝐮","𝐢","𝐨","𝐩"],
                                      ["𝐚","𝐬","𝐝","𝐟","𝐠","𝐡","𝐣","𝐤","𝐥"],
                                      ["𝐳","𝐱","𝐜","𝐯","𝐛","𝐧","𝐦"]],
                         upperCharacters: [["𝐐","𝐖","𝐄","𝐑","𝐓","𝐘","𝐔","𝐈","𝐎","𝐏"],
                                           ["𝐀","𝐒","𝐃","𝐅","𝐆","𝐇","𝐉","𝐊","𝐋"],
                                           ["𝐙","𝐗","𝐂","𝐕","𝐁","𝐍","𝐌"]],
                         id: 6),
            UserKeyboard(title: "𝑆𝑒𝑟𝑖𝑓",
                         characters: [["𝑞","𝑤","𝑒","𝑟","𝑡","𝑦","𝑢","𝑖","𝑜","𝑝"],
                                      ["𝑎","𝑠","𝑑","𝑓","𝑔","ℎ","𝑗","𝑘","𝑙"],
                                      ["𝑧","𝑥","𝑐","𝑣","𝑏","𝑛","𝑚"]],
                         upperCharacters: [["𝑄","𝑊","𝐸","𝑅","𝑇","𝑌","𝑈","𝐼","𝑂","𝑃"],
                                           ["𝐴","𝑆","𝐷","𝐹","𝐺","𝐻","𝐽","𝐾","𝐿"],
                                           ["𝑍","𝑋","𝐶","𝑉","𝐵","𝑁","𝑀"]],
                         
                         
                         id: 7),
            UserKeyboard(title: "𝑺𝒆𝒓𝒊𝒇",
                         characters: [["𝒒","𝒘","𝒆","𝒓","𝒕","𝒚","𝒖","𝒊","𝒐","𝒑"],
                                      ["𝒂","𝒔","𝒅","𝒇","𝒈","𝒉","𝒋","𝒌","𝒍"],
                                      ["𝒛","𝒙","𝒄","𝒗","𝒃","𝒏","𝒎"]],
                         upperCharacters: [["𝑸","𝑾","𝑬","𝑹","𝑻","𝒀","𝑼","𝑰","𝑶","𝑷"],
                                           ["𝑨","𝑺","𝑫","𝑭","𝑮","𝑯","𝑱","𝑲","𝑳"],
                                           ["𝒁","𝑿","𝑪","𝑽","𝑩","𝑵","𝑴"]],
                         
                         id: 8),
            UserKeyboard(title: "𝖲𝖺𝗇𝗌",
                         characters: [["𝗊","𝗐","𝖾","𝗋","𝗍","𝗒","𝗎","𝗂","𝗈","𝗉"],
                                      ["𝖺","𝗌","𝖽","𝖿","𝗀","𝗁","𝗃","𝗄","𝗅"],
                                      ["𝗓","𝗑","𝖼","𝗏","𝖻","𝗇","𝗆"]],
                         upperCharacters:[["𝖰","𝖶","𝖤","𝖱","𝖳","𝖸","𝖴","𝖨","𝖮","𝖯"],
                                          ["𝖠","𝖲","𝖣","𝖥","𝖦","𝖧","𝖩","𝖪","𝖫"],
                                          ["𝖹","𝖷","𝖢","𝖵","𝖡","𝖭","𝖬"]],
                         
                         id: 9),
            
            UserKeyboard(title: "𝗦𝗮𝗻𝘀",
                         characters: [["𝗾","𝘄","𝗲","𝗿","𝘁","𝘆","𝘂","𝗶","𝗼","𝗽"],
                                      ["𝗮","𝘀","𝗱","𝗳","𝗴","𝗵","𝗷","𝗸","𝗹"],
                                      ["𝘇","𝘅","𝗰","𝘃","𝗯","𝗻","𝗺"]],
                         upperCharacters: [["𝗤","𝗪","𝗘","𝗥","𝗧","𝗬","𝗨","𝗜","𝗢","𝗣"],
                                           ["𝗔","𝗦","𝗗","𝗙","𝗚","𝗛","𝗝","𝗞","𝗟"],
                                           ["𝗭","𝗫","𝗖","𝗩","𝗕","𝗡","𝗠"]],
                         id: 10),
            
            UserKeyboard(title: "𝘚𝘢𝘯𝘴",
                         characters: [["𝘲","𝘸","𝘦","𝘳","𝘵","𝘺","𝘶","𝘪","𝘰","𝘱"],
                                      ["𝘢","𝘴","𝘥","𝘧","𝘨","𝘩","𝘫","𝘬","𝘭"],
                                      ["𝘻","𝘹","𝘤","𝘷","𝘣","𝘯","𝘮"]],
                         upperCharacters: [["𝘘","𝘞","𝘌","𝘙","𝘛","𝘠","𝘜","𝘐","𝘖","𝘗"],
                                           ["𝘈","𝘚","𝘋","𝘍","𝘎","𝘏","𝘑","𝘒","𝘓"],
                                           ["𝘡","𝘟","𝘊","𝘝","𝘉","𝘕","𝘔"]],
                         
                         
                         id: 11),
            UserKeyboard(title: "𝙎𝙖𝙣𝙨",
                         characters: [["𝙦","𝙬","𝙚","𝙧","𝙩","𝙮","𝙪","𝙞","𝙤","𝙥"],
                                      ["𝙖","𝙨","𝙙","𝙛","𝙜","𝙝","𝙟","𝙠","𝙡"],
                                      ["𝙯","𝙭","𝙘","𝙫","𝙗","𝙣","𝙢"]],
                         upperCharacters: [["𝙌","𝙒","𝙀","𝙍","𝙏","𝙔","𝙐","𝙄","𝙊","𝙋"],
                                           ["𝘼","𝙎","𝘿","𝙁","𝙂","𝙃","𝙅","𝙆","𝙇"],
                                           ["𝙕","𝙓","𝘾","𝙑","𝘽","𝙉","𝙈"]],
                         
                         id: 12)
            
        ]
    }
}



//            UserKeyboard(title: "𝙀𝙢𝙤𝙟𝙞 𝙀𝙜𝙮𝙥𝙩𝙞𝙖𝙣",
//                         characters: [["𓀀","𓀁","𓀂","𓀃","𓀄","𓀅","𓀆","𓀌","𓀏","𓀒"],
//                                      ["𓀔","𓀗","𓀛","𓀟","𓀡","𓀩","𓀬","𓀭","𓁃","𓁉"],
//                                      ["𓁠","𓁢","𓁨","𓁩","𓁶","𓁷","𓁲"]],
//                         id: 13),
//            UserKeyboard(title: "𝙀𝙢𝙤𝙟𝙞 animal",
//                         characters: [["𓃒","𓃓","𓃔","𓃗","𓃘","𓃙","𓃚","𓃞","𓃠","𓃢","𓃭"],
//                                      ["𓃯","𓃰","𓃱","𓃲","𓃵","𓃸","𓃺","𓃻","𓃾","𓄀"],
//                                      ["𓄁","𓄂","𓄃","𓄅","𓄇","𓅃","𓅰","𓅿"]],
//                         id: 14),
//            UserKeyboard(title: "𝙀𝙢𝙤𝙟𝙞 Symbol",
//                         characters: [["᪥","✯","𖣔","𖧷","߷","༆","༄","Ꙭ","⁂","⌘"],
//                                      ["☼","۞","⍟","𖣘","𓇽","𖦹","❁","᯾"],
//                                      ["★","☆","✫","✰","᯽","✪","𒊹"]],
//                         id: 15),
