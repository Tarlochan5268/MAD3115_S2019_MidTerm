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
    static public var usersArray : [User] = []
    var email = ""
    var password = ""
    static func readUserDataFromPlist()
    {
        if let pList = Bundle.main.path(forResource: "UserInfo", ofType: "plist")
        {
            if let dict = NSDictionary(contentsOfFile: pList)
            {
                // Reading User Array
                if let users = dict["UserList"] as? [[String:Any]]
                {
                    let myuser = User()
                    //print(users)
                    for user in users
                    {
                        myuser.email = user["email"] as! String
                        myuser.password = user["password"] as! String
                    }
                    usersArray.append(myuser) 
                }
            }
            
        }
        
    }
}
