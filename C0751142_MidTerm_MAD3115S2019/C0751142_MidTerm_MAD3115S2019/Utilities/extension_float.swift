//
//  extension_float.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
extension Float
{
    public func currency() -> String
    {
        return String(format: "$%0.2f", self)
    }
    public func formatUnits() -> String
    {
        return String(format : "%0.0f units", self)
    }
    public func formatGb() -> String
    {
        return String(format : "%0.0f GB", self)
    }
}
