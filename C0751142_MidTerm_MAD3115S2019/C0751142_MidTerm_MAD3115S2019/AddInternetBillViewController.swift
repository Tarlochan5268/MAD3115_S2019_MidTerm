//
//  AddInternetBillViewController.swift
//  C0751142_MidTerm_MAD3115S2019
//
//  Created by admin on 2019-07-12.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class AddInternetBillViewController: UIViewController {
    var selectedRow : Int?
    var bill = Internet()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var txtProviderName: UITextField!
    @IBOutlet weak var txtGbUsed: UITextField!
    @IBAction func actionAddBill(_ sender: Any)
    {
        let providerName : String = txtProviderName.text!
        let gbUsed : Float = Float(txtGbUsed.text!)!
        self.bill.providerName = providerName
        self.bill.internetGBused = gbUsed
        
        var customer : Customer = MyDataStore.customerArray[selectedRow!]
        var finalBill : Bill = Internet(obj: bill)
        //print("before customer bill : ",customer.arrayOfBills.count)
        customer.addBillToCustomer(bill: bill)
        //print("after customer bill : ",customer.arrayOfBills.count)
        MyDataStore.removeInsertCustomer(row: selectedRow!, customer: customer)
        let alertControl = UIAlertController(title: "Message", message: "New Bill Added Successfully", preferredStyle: .alert)
        let actionOk = UIAlertAction(title: "Ok", style: .default, handler:
        {
            _ -> Void in
            self.navigationController?.popToRootViewController(animated: true)
        })
        alertControl.addAction(actionOk)
        self .present(alertControl , animated: true , completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
