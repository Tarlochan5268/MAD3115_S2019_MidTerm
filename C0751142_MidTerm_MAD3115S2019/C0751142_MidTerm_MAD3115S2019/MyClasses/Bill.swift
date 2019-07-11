//
//  Bill.swift
//  C0751142_MID_TERM_MAD3004
//
//  Created by admin on 2019-06-20.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class Bill : IDisplay
{
    func display()
    {
        print("Bill id : ",self.billId)
        print("Bill Date : ",self.billDate.getForamttedDate())
        print("Bill Type : ",self.billType)
        print("Bill Amount : ",self.totalBillAmount.currency())
    }
    
    let billId : Int
    var billDate : Date
    var billType : BillType
    public var totalBillAmount : Float
    
    init()
    {
        self.billId = 0
        self.billDate = Date()
        self.billType = BillType.None
        self.totalBillAmount = 0
    }
    init(billId : Int,billDate : Date,billType : BillType,totalBillAmount : Float) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
    
    func calculateTotal()->Float
    {
        var total : Float = 0
        self.totalBillAmount = total
        return total
    }
    
}
