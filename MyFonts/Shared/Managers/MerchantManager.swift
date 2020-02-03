////
////  MerchantManager.swift
////  MyFonts
////
////  Created by Irakli on 1/30/20.
////  Copyright © 2020 Irakli. All rights reserved.
////
//
//import Foundation
import UIKit
import SwiftyStoreKit
//
final class MerchantManager {
    
    private let MonthlySubscriptionId = "com.thargi.purchase.subscription.monthly"
    private let secret = "b0627200b6bd4bc180f5308421825e8e"
    static let shared = MerchantManager()
    
    func retrieveProducts() {
        SwiftyStoreKit.retrieveProductsInfo([MonthlySubscriptionId]) { result in
            if let product = result.retrievedProducts.first {
                let priceString = product.localizedPrice!
                print("Product: \(product.localizedDescription), price: \(priceString)")
            }
            else if let invalidProductId = result.invalidProductIDs.first {
                print("Invalid product identifier: \(invalidProductId)")
            }
            else {
                print("Error: \(result.error)")
            }
        }
    }
    
    func purchase1MonthIAP() {
        SwiftyStoreKit.purchaseProduct(MonthlySubscriptionId, quantity: 1, atomically: true) { result in
            switch result {
            case .success(let purchase):
                print("Purchase Success: \(purchase.productId)")
                print("Transaction Date: \(purchase.transaction.transactionDate)")
                PersistencyManager.shared.savePurchaseDate(date: purchase.transaction.transactionDate!)
            case .error(let error):
                switch error.code {
                case .unknown: print("Unknown error. Please contact support")
                case .clientInvalid: print("Not allowed to make the payment")
                case .paymentCancelled: break
                case .paymentInvalid: print("The purchase identifier was invalid")
                case .paymentNotAllowed: print("The device is not allowed to make the payment")
                case .storeProductNotAvailable: print("The product is not available in the current storefront")
                case .cloudServicePermissionDenied: print("Access to cloud service information is not allowed")
                case .cloudServiceNetworkConnectionFailed: print("Could not connect to the network")
                case .cloudServiceRevoked: print("User has revoked permission to use this cloud service")
                default: print((error as NSError).localizedDescription)
                }
            }
        }
    }
    
    func verifySubscription() {
        let appleValidator = AppleReceiptValidator(service: .production, sharedSecret: secret)
        SwiftyStoreKit.verifyReceipt(using: appleValidator) { result in
            switch result {
            case .success(let receipt):
                let productId = self.MonthlySubscriptionId
                // Verify the purchase of a Subscription
                let purchaseResult = SwiftyStoreKit.verifySubscription(
                    ofType: .autoRenewable, // or .nonRenewing (see below)
                    productId: productId,
                    inReceipt: receipt)
                switch purchaseResult {
                case .purchased(let expiryDate, let items):
                    print("\(productId) is valid until \(expiryDate)\n\(items)\n")
                case .expired(let expiryDate, let items):
                    print("\(productId) is expired since \(expiryDate)\n\(items)\n")
                case .notPurchased:
                    print("The user has never purchased \(productId)")
                }
                
            case .error(let error):
                print("Receipt verification failed: \(error)")
            }
        }
    }
}
