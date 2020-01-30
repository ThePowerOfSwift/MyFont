//
//  PersistencyManager.swift
//  MyFonts
//
//  Created by Irakli on 1/30/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation


let groupId = "group.com.atomicbird.demonotes"

final class PersistencyManager {
    
    static let shared = PersistencyManager()
    
    func savePurchase() {
        let userDefaults = UserDefaults.init(suiteName: groupId)
    }
}

