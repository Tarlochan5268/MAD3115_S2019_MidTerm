//
//  Internet.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class Internet : Bill
{
    var providerName : String
    var internetGBused : Float
    let internetRate : Float = 10
    
    override init()
    {
        self.providerName = ""
        self.internetGBused = 0
        super.init()
    }
    
    init(billId: Int, billDate: Date, billType: BillType,providerName : String,internetGBused : Float)
    {
        self.providerName = providerName
        self.internetGBused = internetGBused
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: 0)
    }
    
    override func calculateTotal()->Float
    {
        var total : Float = 0
        total = self.internetGBused * self.internetRate
        self.totalBillAmount = total
        return total
    }
    
    override func display()
    {
        print("Bill id : ",self.billId)
        print("Bill Date : ",self.billDate.getForamttedDate())
        print("Bill Type : ",self.billType)
        print("Bill Amount : ",self.totalBillAmount.currency())
        print("Provider Name : ",self.providerName)
        print("Internet Usage : ",self.internetGBused.formatGb())
    }
}
