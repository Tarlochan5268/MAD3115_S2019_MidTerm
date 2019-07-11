//
//  extension_string.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
extension String
{
    func countryCode(countryType:CountryType) -> String
    {
        if(countryType == CountryType.Canada)
        {
            return "+1\(self)"
        }
        else
        {
            return "+91\(self)"
        }
    }
}
