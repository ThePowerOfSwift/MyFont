//
//  KeyboardViewController+Setup.swift
//  KeyboardKitDemoKeyboard
//
//  Created by Daniel Saidi on 2019-10-15.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

import KeyboardKit
import UIKit
import ShimmerSwift

extension KeyboardViewController {
    
    func setupKeyboard() {
        setupKeyboard(for: view.bounds.size)
    }
    
    func setupKeyboard(for size: CGSize) {
        DispatchQueue.main.async {
            self.setupKeyboardAsync(for: size)
        }
    }
    
    func setupKeyboardAsync(for size: CGSize) {
        
        KeyboardManager.sharedInstance.currentKeyboard = keyboardType
        keyboardStackView.removeAllArrangedSubviews()
        switch keyboardType {
        case .alphabetic(let uppercased):
            setupAlphabeticKeyboard(uppercased: uppercased, index: KeyboardManager.sharedInstance.currentIndex)
        case .alpabetic(let uppercased, let index):
            KeyboardManager.sharedInstance.currentIndex = index
            setupAlphabeticKeyboard(uppercased: uppercased, index: index)
        case .numeric: setupNumericKeyboard()
        case .numericFix: setupNumericFixKeyboard()
        case .symbolic: setupSymbolicKeyboard()
        case .settings:
            shimmerView?.isHidden = true
            addSettingsKeyboard()
            return
        default: return
        }
        addFontToolbar(index: KeyboardManager.sharedInstance.currentIndex)
    }
    
    func setupAlphabeticKeyboard(uppercased: Bool = false, index: Int) {

        if FontKeyboard.ViewModel.keyboards[index].characters[1].count == 0 {
            setupEmojiKeyboard(index: index)
            return
        }
        
        if index > 0 {
            AppReviewManager.shared.requestReviewIfAppropriate()
        }
        
        AlphabeticKeyboard.characters = FontKeyboard.ViewModel.keyboards[index].characters
        if let upperCasedFont = FontKeyboard.ViewModel.keyboards[index].upperCharacters {
            AlphabeticKeyboard.upperCasedCharacters = upperCasedFont
        } else {
            AlphabeticKeyboard.upperCasedCharacters = []
        }
        
        let keyboard = AlphabeticKeyboard(uppercased: uppercased, in: self)
        let rows = buttonRows(for: keyboard.actions, distribution: .fillProportionally)
        keyboardStackView.addArrangedSubviews(rows)
        if index > 3 {
            shimmerView?.isHidden = false
        } else {
            shimmerView?.isHidden = true
        }
    }
    
    private func setupEmojiKeyboard(index: Int) {
        var keyboard = EmojiKeyboard(in: self)
        keyboard.actions = []
        let isLandscape = view.frame.width > 400
        let rowsPerPage = isLandscape ? 5 : 5
        let buttonsPerRow = isLandscape ? 7 : 7
        for i in stride(from: 0, to: FontKeyboard.ViewModel.keyboards[index].characters[0].count, by: 1) {
            let char = KeyboardAction.character(FontKeyboard.ViewModel.keyboards[index].characters[0][i])
            keyboard.actions.append(char)
        }
        let config = KeyboardButtonRowCollectionView.Configuration(rowHeight: 40, rowsPerPage: rowsPerPage, buttonsPerRow: buttonsPerRow)
        let view = KeyboardButtonRowCollectionView(id:"",actions: keyboard.actions, configuration: config) { [unowned self] in return self.button(for: $0) }
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = true
        keyboardStackView.addArrangedSubview(view)
    }
    
    
    private func addSettingsKeyboard() {
        var keyboard = EmojiKeyboard(in: self)
        keyboard.actions = []
//        let isLandscape = view.frame.width > 400
        let rowsPerPage = 4
        let buttonsPerRow = 4
        for i in stride(from: 0, to: FontKeyboard.ViewModel.keyboards.count, by: 1) {
            let kb = KeyboardAction.switchToKeyboard(.alpabetic(uppercased: false, index: i))
            keyboard.actions.append(kb)
        }
        
        let config = KeyboardButtonRowCollectionView.Configuration(rowHeight: view.frame.height/4, rowsPerPage: rowsPerPage, buttonsPerRow: buttonsPerRow)
        let view = KeyboardButtonRowCollectionView(id:"SettingsKeyboard",actions: keyboard.actions, configuration: config) { [unowned self] in return self.button(for: $0) }
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        keyboardStackView.addArrangedSubview(view)
    }
    
    private func addFontToolbar(index: Int) {
        var fontsToAdd: [KeyboardAction] = []
        for i in stride(from: 0, to: FontKeyboard.ViewModel.keyboards.count, by: 1) {
            let keyBoard = KeyboardAction.switchToKeyboard(.alpabetic(uppercased: false, index: i))
            fontsToAdd.append(keyBoard)
        }
        let rowsPerPage = 1
        let buttonsPerRow = 4
        let config = KeyboardButtonRowCollectionView.Configuration(rowHeight: 40, rowsPerPage: rowsPerPage, buttonsPerRow: buttonsPerRow)
        let view = KeyboardButtonRowCollectionView(id:"FontToolbar",actions: fontsToAdd, configuration: config) { [unowned self] in return self.button(for: $0) }
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        keyboardStackView.insertArrangedSubview(view, at: 0)
    }
    
    func setupNumericKeyboard() {
        let keyboard = NumericKeyboard(in: self)
        let rows = buttonRows(for: keyboard.actions, distribution: .fillProportionally)
        keyboardStackView.addArrangedSubviews(rows)
    }
    
    func setupNumericFixKeyboard() {
           let keyboard = NumericKeyboardFix(in: self)
           let rows = buttonRows(for: keyboard.actions, distribution: .fillProportionally)
           keyboardStackView.addArrangedSubviews(rows)
       }
    
    func setupSymbolicKeyboard() {
        let keyboard = SymbolicKeyboard(in: self)
        let rows = buttonRows(for: keyboard.actions, distribution: .fillProportionally)
        keyboardStackView.addArrangedSubviews(rows)
    }
}
