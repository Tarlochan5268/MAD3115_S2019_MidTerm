//
//  NewCustomerViewController.swift
//  C0751142_MidTerm_MAD3115S2019
//
//  Created by admin on 2019-07-12.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class NewCustomerViewController: UIViewController {

    @IBAction func actionAddCustomer(_ sender: Any)
    {
        let empty : String = ""
        if(txtfirstName.text! == empty || txtLastName.text! == empty || txtEmail.text! == empty)
        {
            let alertControl = UIAlertController(title: "Message", message: "Please Fill all the fields. Dont Leave them Empty", preferredStyle: .alert)
            let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertControl.addAction(actionOk)
            self .present(alertControl , animated: true , completion: nil)
            
        }
        else
        {
            if(txtEmail.text!.isValidEmail())
            {
                let firstName : String = txtfirstName.text!
                let lastName : String = txtLastName.text!
                let email : String = txtEmail.text!
                let customer = Customer(firstName: firstName, lastName: lastName, email: email)
                print("customer id : ",customer.customerid,"full name : ",customer.fullName)
                Customer.customerDict.updateValue(customer, forKey: customer.customerid)
                MyDataStore.customerArray.append(customer)
                let alertControl = UIAlertController(title: "Message", message: "New Customer Added Successfully", preferredStyle: .alert)
                let actionOk = UIAlertAction(title: "Ok", style: .default, handler: {
                    _ -> Void in
                    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
                    let nextViewController = storyBoard.instantiateViewController(withIdentifier: "billListTableVC") as! BillListTableViewController
                    self.navigationController?.pushViewController(nextViewController, animated: true)
                })
                alertControl.addAction(actionOk)
                self .present(alertControl , animated: true , completion: nil)
                
            }
            else
            {
                let alertControl = UIAlertController(title: "Message", message: "Sorry Invalid Email . Try Again", preferredStyle: .alert)
                let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertControl.addAction(actionOk)
                self .present(alertControl , animated: true , completion: nil)
                
            }
            
        }
        
    }
    @IBOutlet weak var buttonAddCustomer: UIButton!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtfirstName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
