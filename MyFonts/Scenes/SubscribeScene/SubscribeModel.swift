//
//  SubscribeModel.swift
//  MyFonts
//
//  Created by Irakli on 1/30/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation


struct SubscribeModel {
    // MARK: Todo refactor to use stringformat
    static let Title = NSLocalizedString("subscribe.title", comment: "Font Access")
    static let ShowroomKeyboardsAmount = 7
    let SubsribtionTOS: String = NSLocalizedString("subscribe.text.itunes", comment: "")
    var SubscriptionOffer: String
    
    init(localizedPrice: String) {
        let localizedString = NSLocalizedString("subscripe.offer.trial", comment: "")
        let formattedLocalizedString = String(format: localizedString, localizedPrice)
        SubscriptionOffer = formattedLocalizedString
    }
    
    init() {
        let localizedString = NSLocalizedString("subscripe.offer.trial", comment: "")
        let formattedLocalizedString = String(format: localizedString, "7.99$")
        SubscriptionOffer = formattedLocalizedString
    }
    
    struct Offer {
        var icon: String
        var title: String
        
        static let Offers: [Offer] = [
            Offer(icon: "ic_instagram", title: NSLocalizedString("subscribe.offer.offer1", comment: "")),
            Offer(icon: "ic_allfonts", title: NSLocalizedString("subscribe.offer.offer2", comment: "")),
            Offer(icon: "ic_likes", title: NSLocalizedString("subscribe.offer.offer3", comment: "")),
            Offer(icon: "ic_apps", title: NSLocalizedString("subscribe.offer.offer4", comment: ""))
        ]
    }
    
}
