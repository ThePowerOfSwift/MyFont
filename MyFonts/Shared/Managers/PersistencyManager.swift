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
    private let darkmodeKey = "dark_mode"
    static let shared = PersistencyManager()
    
    private let userDefaults = UserDefaults.init(suiteName: "group.com.atomicbird.demonotes")
    
    func setSubscriptionActive(withDate date: Date) {
        
        userDefaults?.setValue(date, forKey: purchaseDateKey)
    }
    
    func isSubscriptionActive() -> Bool {
        
        if ((userDefaults?.value(forKey: purchaseDateKey)) != nil) {
            return true
        }
        return false
    }
    
    func setDarkmode(active: Bool) {
        
        if let _ = userDefaults?.bool(forKey: darkmodeKey) {
            userDefaults?.set(active, forKey: darkmodeKey)
        }
    }
    
    func isDarkmodeActive() -> Bool {
        
        if let isDarkMode = userDefaults?.bool(forKey: darkmodeKey) {
            return isDarkMode
        } else {
            return false
        }
    }
    
    func isDarkModeSet() -> Bool {
        
        if let _ = userDefaults?.bool(forKey: darkmodeKey) {
            return true
        } else {
            return false
        }
    }
}

