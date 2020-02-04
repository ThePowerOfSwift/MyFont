//
//  Data+Extension.swift
//  TPReceiptValidator
//
//  Created by Pavel Tikhonenko on 29/09/16.
//  Copyright © 2016 Pavel Tikhonenko. All rights reserved.
//

import Foundation
    
extension Data
{
    public init(hex: String)
    {
        self.init(Array<UInt8>(hex: hex))
    }
    
    public var bytes: Array<UInt8>
    {
        return Array(self)
    }
    
    public func toHexString() -> String
    {
        return bytes.`lazy`.reduce("")
        {
            var s = String($1, radix: 16)
            if s.count == 1
            {
                s = "0" + s
            }
            return $0 + s
        }
    }
    
    /// Array of UInt8, to use for SecKeyEncrypt
    public func arrayOfBytes() -> [UInt8] {
        let count = self.count / MemoryLayout<UInt8>.size
        var bytesArray = [UInt8](repeating: 0, count: count)
        (self as NSData).getBytes(&bytesArray, length:count * MemoryLayout<UInt8>.size)
        return bytesArray
    }
    
}
