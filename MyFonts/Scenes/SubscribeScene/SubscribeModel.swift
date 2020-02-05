//
//  SubscribeModel.swift
//  MyFonts
//
//  Created by Irakli on 1/30/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation


struct SubscribeModel {
    let SubsribtionTOS: String = NSLocalizedString("subscribe.tos", comment: "")
    var SubscriptionOffer: String
    
    init(localizedPrice: String) {
        let trialoffer = NSLocalizedString("subscribe.trial", comment: "Try 3 days for free")
        let then = NSLocalizedString("general.then", comment: "then")
        let month = NSLocalizedString("general.month", comment: "month")
        let cancel = NSLocalizedString("subscribe.cancel", comment: "cancel anytime")
        
        SubscriptionOffer = trialoffer + "." + "\n " + then + " \(localizedPrice)" + "/" + month + ", " + cancel
    }
    
    init() {
        let trialoffer = NSLocalizedString("subscribe.trial", comment: "Try 3 days for free")
        let then = NSLocalizedString("general.then", comment: "then")
        let month = NSLocalizedString("general.month", comment: "month")
        let cancel = NSLocalizedString("subscribe.cancel", comment: "cancel anytime")
        
        SubscriptionOffer = trialoffer + "." + "\n " + then + "9.99$" + "/" + month + ", " + cancel
    }
    
}




