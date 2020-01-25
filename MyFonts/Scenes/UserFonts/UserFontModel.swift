//
//  UserFontMode.swift
//  MyFonts
//
//  Created by Irakli on 1/24/20.
//  Copyright © 2020 Irakli. All rights reserved.
//

import Foundation
import MobileCoreServices

final class UserFontModel: NSObject, Codable, NSItemProviderReading, NSItemProviderWriting {
    
    static var UserFonts : [UserFontModel] = [UserFontModel(title: "Font1", id: 1), UserFontModel(title: "Font2", id: 2), UserFontModel(title: "Font3", id: 3), UserFontModel(title: "Font4", id: 4)]
    
    static var readableTypeIdentifiersForItemProvider: [String] {
        return [(kUTTypeData) as String]
    }
    
    static var writableTypeIdentifiersForItemProvider: [String] {
        return [(kUTTypeData) as String]
    }
    
    var title: String
    var id: Int
    
    init(title:String, id: Int) {
        self.title = title
        self.id = id
    }
    
    func loadData(withTypeIdentifier typeIdentifier: String, forItemProviderCompletionHandler completionHandler: @escaping (Data?, Error?) -> Void) -> Progress? {
        let progress = Progress(totalUnitCount: 100)
        // 5
        
        do {
            let encoder = JSONEncoder()
            encoder.outputFormatting = .prettyPrinted
            let data = try encoder.encode(self)
            _ = String(data: data, encoding: String.Encoding.utf8)
            progress.completedUnitCount = 100
            completionHandler(data, nil)
        } catch {
            
            completionHandler(nil, error)
        }
        
        return progress
    }
    
    static func object(withItemProviderData data: Data, typeIdentifier: String) throws -> UserFontModel {
        let decoder = JSONDecoder()
        do {
            let myJSON = try decoder.decode(UserFontModel.self, from: data)
            return myJSON
        } catch {
            fatalError("Err")
        }
        
    }
    
}
