//
//  AppReviewManager.swift
//  MyFonts
//
//  Created by Irakli on 2/5/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import StoreKit

final class AppReviewManager {

    static let shared = AppReviewManager()
    private let minimumReviewWorthyActionCount = 101
    
    func requestReviewIfAppropriate() {
        
        guard PersistencyManager.shared.updateReviewWorthyActions() > minimumReviewWorthyActionCount else {  return }
    
        let currentVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String

        let lastVersion = PersistencyManager.shared.latestReviewedVersion()
        
        guard lastVersion == nil || (lastVersion ?? -1 != Int(currentVersion ?? "")) else { return }
        
        guard let purchaseDate = PersistencyManager.shared.purchaseDate() else { return }
        let daysFromPurchase =  Calendar.current.dateComponents([.day], from: Date(), to: purchaseDate).day
        guard daysFromPurchase ?? 0 > 14 else { return }
        
        SKStoreReviewController.requestReview()
        
        PersistencyManager.shared.saveReviewFor(version: currentVersion!)
    }
}


