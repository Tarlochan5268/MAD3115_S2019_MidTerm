//
//  ViewController.swift
//  C0751142_MidTerm_MAD3115S2019
//
//  Created by admin on 2019-07-11.
//  Copyright © 2019 Tarlochan5268. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var switchRememberMe: UISwitch!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        MyDataStore.readUserDataFromPlist()
        getRememberMeValues()
        // Do any additional setup after loading the view.
        
    }
    // remember me code
    private func getRememberMeValues()
    {
        let userDefault = UserDefaults.standard
        
        if let email = userDefault.string(forKey: "userEmail")
        {
            txtEmail.text = email
            
            if let pwd = userDefault.string(forKey: "userPassword")
            {
                txtPassword.text = pwd
            }
        }
        switchRememberMe.setOn(true, animated: true)
    }
    
    @IBAction func actionLogin(_ sender: Any)
    {
        let myEmail = self.txtEmail.text!
        let myPassword = self.txtPassword.text!
        if let password = MyDataStore.usersDict[myEmail]
        {
            // User Exists
            if(myPassword == password)
            {
                // user password correct
                // remember me code
                let userDefault = UserDefaults.standard
                if switchRememberMe.isOn
                {
                    
                    userDefault.setValue(txtEmail.text, forKey: "userEmail")
                    userDefault.set(txtPassword.text, forKey: "userPassword")
                }
                else
                {
                    userDefault.removeObject(forKey: "userEmail")
                    userDefault.removeObject(forKey: "userPassword")
                }
                
                // User password correct
                let alertControl = UIAlertController(title: "Message", message: "Correct Information Entered", preferredStyle: .alert)
                let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertControl.addAction(actionOk)
                self .present(alertControl , animated: true , completion: nil)
                
            }
            else
            {
                //user password incorrect
                let alertControl = UIAlertController(title: "Message", message: "Incorrect Password Entered", preferredStyle: .alert)
                let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alertControl.addAction(actionOk)
                self .present(alertControl , animated: true , completion: nil)
                
            }
        }
        else
        {
            //User Doesnt Exist
            let alertControl = UIAlertController(title: "Message", message: "User Does Not Exist", preferredStyle: .alert)
            let actionOk = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertControl.addAction(actionOk)
            self .present(alertControl , animated: true , completion: nil)
            
        }
    }
    
    @IBAction func unWindLogoutFromAnyScreen(storyboardSegue: UIStoryboardSegue)
    {
        let s = storyboardSegue.source as! WelcomeViewController
        txtPassword.text = ""
        txtEmail.text = ""
    }
    
}

