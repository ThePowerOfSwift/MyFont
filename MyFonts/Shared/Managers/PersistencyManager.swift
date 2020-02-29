//
//  PersistencyManager.swift
//  MyFonts
//
//  Created by Irakli on 1/30/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation

final class PersistencyManager {
    
    private let purchaseDateKey = "purchase_date"
    private let darkmodeKey = "dark_mode"
    private let ratedVersionNumberKey = "rated_version"
    private let reviewWorthyCountKey = "review_worthy_actionCount"
    private let lastReviewAppVersion = "last_review_app_aersion"
    static let shared = PersistencyManager()
    
    private let userDefaults = UserDefaults.init(suiteName: "group.thargi.com.myfont")
    
    
    func setSubscriptionActive(withDate date: Date) {
        
        userDefaults?.setValue(date, forKey: purchaseDateKey)
    }
    
    func isSubscriptionActive() -> Bool {
        
        if ((userDefaults?.value(forKey: purchaseDateKey)) != nil) {
            return true
        }
        return false
    }
    
    func purchaseDate() -> Date? {
        return userDefaults?.value(forKey: purchaseDateKey) as? Date
    }
    

    func latestReviewedVersion() -> Int? {
        if let versioNumber = userDefaults?.integer(forKey: ratedVersionNumberKey) {
            return versioNumber
        } else {
            return nil
        }
    }
    
    func updateReviewWorthyActions() -> Int {
        if let actionCount = userDefaults?.integer(forKey: reviewWorthyCountKey) {
            userDefaults?.set(actionCount + 1, forKey: reviewWorthyCountKey)
            return actionCount + 1
        } else {
            userDefaults?.set(1, forKey: reviewWorthyCountKey)
            return 1
        }
    }
    
    func saveReviewFor(version: String) {
        userDefaults?.set(0, forKey: reviewWorthyCountKey)
        userDefaults?.set(version, forKey: lastReviewAppVersion)
    }

}



//func setDarkmode(active: Bool) {
//
//    if let _ = userDefaults?.bool(forKey: darkmodeKey) {
//        userDefaults?.set(active, forKey: darkmodeKey)
//    }
//}
//
//func isDarkmodeActive() -> Bool {
//
//    if let isDarkMode = userDefaults?.bool(forKey: darkmodeKey) {
//        return isDarkMode
//    } else {
//        return false
//    }
//}
//
//func isDarkModeSet() -> Bool {
//
//    if let _ = userDefaults?.bool(forKey: darkmodeKey) {
//        return true
//    } else {
//        return false
//    }
//}
