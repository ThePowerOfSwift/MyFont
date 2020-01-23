//
//  KeyboardViewController+Setup.swift
//  KeyboardKitDemoKeyboard
//
//  Created by Daniel Saidi on 2019-10-15.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

import KeyboardKit
import UIKit

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
        case .symbolic: setupSymbolicKeyboard()
        default: return
        }
        addFontToolbar(index: KeyboardManager.sharedInstance.currentIndex)
    }
    
    func setupAlphabeticKeyboard(uppercased: Bool = false, index: Int) {
        
        AlphabeticKeyboard.characters = FontKeyboard.ViewModel.keyboards[index].characters
        if let upperCasedFont = FontKeyboard.ViewModel.keyboards[index].upperCharacters {
            AlphabeticKeyboard.upperCasedCharacters = upperCasedFont
        } else {
            AlphabeticKeyboard.upperCasedCharacters = []
        }
        let keyboard = AlphabeticKeyboard(uppercased: uppercased, in: self)
        let rows = buttonRows(for: keyboard.actions, distribution: .fillProportionally)
        keyboardStackView.addArrangedSubviews(rows)
        //        addFontToolbar(index: index)
    }
    
    private func addFontToolbar(index: Int) {
        var fontsToAdd: [KeyboardAction] = []
        for i in stride(from: 0, to: 22, by: 1) {
            let keyBoard = KeyboardAction.switchToKeyboard(.alpabetic(uppercased: false, index: i))
            fontsToAdd.append(keyBoard)
        }
        
        let rowsPerPage = 1
        let buttonsPerRow = 3
        let config = KeyboardButtonRowCollectionView.Configuration(rowHeight: 40, rowsPerPage: rowsPerPage, buttonsPerRow: buttonsPerRow)
        let view = KeyboardButtonRowCollectionView(actions: fontsToAdd, configuration: config) { [unowned self] in return self.button(for: $0) }
        keyboardStackView.insertArrangedSubview(view, at: 0)
        //        view.scrollToItem(at: IndexPath(row: index, section: 0), at: .right, animated: true)
    }
    
    func setupNumericKeyboard() {
        let keyboard = NumericKeyboard(in: self)
        let rows = buttonRows(for: keyboard.actions, distribution: .fillProportionally)
        keyboardStackView.addArrangedSubviews(rows)
    }
    
    func setupSymbolicKeyboard() {
        let keyboard = SymbolicKeyboard(in: self)
        let rows = buttonRows(for: keyboard.actions, distribution: .fillProportionally)
        keyboardStackView.addArrangedSubviews(rows)
    }
}
