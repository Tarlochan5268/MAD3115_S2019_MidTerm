//
//  Hydro.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class Hydro : Bill
{
    var agencyName : String
    var unitConsumed : Float
    let unitRate : Float = 10
    
    override init()
    {
        self.agencyName = ""
        self.unitConsumed = 0
        super.init()
    }
    init(billId: Int, billDate: Date, billType: BillType,agencyName : String,unitConsumed : Float )
    {
        self.agencyName = agencyName
        self.unitConsumed = unitConsumed
        super.init(billId: billId, billDate: billDate, billType: billType,totalBillAmount: 0)
    }
    
    override func calculateTotal()->Float
    {
        var total : Float = 0
        total = self.unitConsumed * self.unitRate
        self.totalBillAmount = total
        return total
    }
    
    override func display()
    {
        print("Bill id : ",self.billId)
        print("Bill Date : ",self.billDate.getForamttedDate())
        print("Bill Type : ",self.billType)
        print("Bill Amount : ",self.totalBillAmount.currency())
        print("Agency Name : ",self.agencyName)
        print("Unit Consumed : ",self.unitConsumed.formatUnits())
    }
}
