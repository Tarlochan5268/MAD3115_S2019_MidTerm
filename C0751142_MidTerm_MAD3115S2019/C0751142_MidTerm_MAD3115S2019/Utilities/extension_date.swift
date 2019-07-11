//
//  extension_date.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
extension Date
{
    public func getForamttedDate() -> String
    {
        
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, dd MMMM , yyyy"
        // in the format "Thursday, 20 june, 2019
        var formattedDate = dateFormatter.string(from: self)
        return formattedDate
    }
}
