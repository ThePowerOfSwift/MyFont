//
//  AppDelegate.swift
//  MyFonts
//
//  Created by Irakli on 1/22/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import UIKit
import SwiftyStoreKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        completeTransactions()
        RebeloperStore.start()
        
        return true
    }
    
}

