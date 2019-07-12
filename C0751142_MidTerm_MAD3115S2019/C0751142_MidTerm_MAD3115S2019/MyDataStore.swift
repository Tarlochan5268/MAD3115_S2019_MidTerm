//
//  MyDataStore.swift
//  C0751142_MidTerm_MAD3115S2019
//
//  Created by admin on 2019-07-11.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import Foundation
class MyDataStore
{
    static public var usersDict : [String : String] = [:]
    static public var usersArray : [User] = []
    static public var customerArray : [Customer] = []
    //static public var customerDict : [Int:Customer] = [:]
    static func readUserDataFromPlist()
    {
        if let pList = Bundle.main.path(forResource: "UserInfo", ofType: "plist")
        {
            if let dict = NSDictionary(contentsOfFile: pList)
            {
                // Reading User Array
                if let users = dict["UserList"] as? [[String:Any]]
                {
                    
                    //print(users)
                    for user in users
                    {
                        let myuser = User()
                        myuser.email = user["email"] as! String
                        myuser.password = user["password"] as! String
                        usersArray.append(myuser)
                        usersDict.updateValue(myuser.password, forKey: myuser.email)
                    }
                    
                }
            }
            
        }
        
    }
    
    static func displayArrayDict()
    {
        for user in usersArray
        {
            print(user.userId)
            print(user.email)
            print(user.password)
        }
    }
    
    static func LoadCustomers()
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy"
        let formattedDate1 : Date = dateFormatter.date(from: "20-05-2019")!
        let c1bill1 : Bill = Hydro(billId: 1, billDate: formattedDate1, billType: BillType.Hydro, agencyName: "Planet Energy", unitConsumed: 29)
        c1bill1.calculateTotal()
        
        let formattedDate2 : Date = dateFormatter.date(from: "21-05-2019")!
        let c1bill2 : Bill = Internet(billId: 2, billDate: formattedDate2, billType: BillType.Internet, providerName: "Rogers", internetGBused: 500)
        c1bill2.calculateTotal()
        
        let customer1 : Customer = Customer(customerid: 1, firstName: "Pritesh", lastName: "Patel", email: "amallabyg@topsy.com", arrayOfBills: [c1bill1,c1bill2])
        Customer.addCustomer(customer: customer1)
        //Customer 1 Added completely with all his Bills
        
        let formattedDate3 : Date = dateFormatter.date(from: "15-05-2019")!
        let c2bill1 : Bill = Hydro(billId: 1, billDate: formattedDate3, billType: BillType.Hydro, agencyName: "Planet Energy", unitConsumed: 19)
        c2bill1.calculateTotal()
        
        let c2bill2 : Bill = Internet(billId: 2, billDate: formattedDate3, billType: BillType.Internet, providerName: "TELUS", internetGBused: 500)
        c2bill2.calculateTotal()
        
        let formattedDate4 : Date = dateFormatter.date(from: "16-05-2019")!
        let c2bill3 : Bill = Mobile(billId: 3, billDate: formattedDate4, billType: BillType.Mobile, mobileModelName: "Galaxy Samsung Inc.", mobileNumber: "1234567890", internetGBused: 5, minuteUsed: 356, countryType: CountryType.Canada,planName: "Prepaid Talk + Text plan")
        c2bill3.calculateTotal()
        
        let customer2 : Customer = Customer(customerid: 2, firstName: "Vipul", lastName: "Garg", email: "adurrant1@github.io", arrayOfBills: [c2bill1,c2bill2,c2bill3])
        Customer.addCustomer(customer: customer2)
        //Customer 2 Added completely with all his Bills
        
        let c3bill1 : Bill = Hydro(billId: 1, billDate: formattedDate3, billType: BillType.Hydro, agencyName: "Planet Energy", unitConsumed: 40)
        c3bill1.calculateTotal()
        let customer3 : Customer = Customer(customerid: 3, firstName: "Anetta", lastName: "Langrick", email: "bgeillc@europa.eu", arrayOfBills: [c3bill1])
        Customer.addCustomer(customer: customer3)
        //Customer 3 Added completely with all his Bills
        let c4bill1 : Bill = Hydro(billId: 1, billDate: formattedDate3, billType: BillType.Hydro, agencyName: "Planet Energy", unitConsumed: 60)
        c4bill1.calculateTotal()
        let customer4 : Customer = Customer(customerid: 4, firstName: "Caleb", lastName: "Abraham", email: "caleb123@gmail.com", arrayOfBills: [c4bill1])
        Customer.addCustomer(customer: customer4)
        //Customer 4 Added completely with all his Bills
        
        let formattedDate5 : Date = dateFormatter.date(from: "11-06-2019")!
        let c5bill1 : Bill = Hydro(billId: 1, billDate: formattedDate3, billType: BillType.Hydro, agencyName: "Planet Energy", unitConsumed: 9)
        c2bill1.calculateTotal()
        
        let c5bill2 : Bill = Internet(billId: 2, billDate: formattedDate3, billType: BillType.Internet, providerName: "TELUS", internetGBused: 100)
        c2bill2.calculateTotal()
        
        let customer5 : Customer = Customer(customerid: 5, firstName: "Marian", lastName: "Holy", email: "marian123@gmail.com", arrayOfBills: [c5bill1,c5bill2])
        Customer.addCustomer(customer: customer5)
        //Customer 5 Added completely with all his Bill
        self.customerArray = Array(Customer.customerDict.values)
        
    }
}
