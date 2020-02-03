//
//  PersistencyManager.swift
//  MyFonts
//
//  Created by Irakli on 1/30/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation

final class PersistencyManager {
    
    private let groupId = "group.com.atomicbird.demonotes"
    private let purchaseDateKey = "purchase_date"
    
    static let shared = PersistencyManager()
    
    func savePurchaseDate(date: Date) {
        let userDefaults = UserDefaults.init(suiteName: groupId)
        userDefaults?.setValue(date, forKey: purchaseDateKey)
    }
    
    func isSubscriptionActive() -> Bool {
        let userDefaults = UserDefaults.init(suiteName: groupId)
        if ((userDefaults?.value(forKey: purchaseDateKey)) != nil) {
            return true
        }
        return false
    }
}

