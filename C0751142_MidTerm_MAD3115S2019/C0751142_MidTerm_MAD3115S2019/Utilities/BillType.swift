//
//  BillType.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
enum BillType : String
{
    case Mobile = "Mobile"
    case Internet = "Internet"
    case Hydro = "Hydro"
    case None = "None"
    static let allValues = ["Mobile","Internet","Hydro"]
}
