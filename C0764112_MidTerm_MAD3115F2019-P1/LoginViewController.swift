//
//  LoginViewController.swift
//  C0764112_MidTerm_MAD3115F2019-P1
//
//  Created by Sandeep Jangra on 2019-11-01.
//  Copyright © 2019 Sandeep Singh. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{

    @IBOutlet weak var txtusername: UITextField!
    
    @IBOutlet weak var txtpswd: UITextField!
    
   // @IBOutlet weak var btnLogin: UIButton!
    
    @IBOutlet weak var btnLogin: UIButton!
    
    
    @IBOutlet weak var btnRememberMe: UISwitch!
    
    var uDefault : UserDefaults!
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        let getdata = Singleton.getInstance()
        
        
        getdata.createCust()
        
        uDefault  = UserDefaults.standard
        
        if let userName = uDefault.value(forKey: "userName")
        
        
        {
            
            txtusername.text = userName as? String
            
        }
        
        
        if let userPassword = uDefault.value(forKey: "userPassword")
            
        {
            
            
            txtpswd.text = userPassword as? String
        }
        
    }
    
    @IBAction func btnLogin(_ sender: UIButton)
        
    {
        
        if readInformationPlist()
            
        {
        
                            if self.btnRememberMe.isOn
                            {
                                self.uDefault.set(txtusername.text, forKey: "userName")
                                
                                self.uDefault.set(txtpswd.text, forKey: "userPassword")
                            }else
                                
                            {
                                
                                self.uDefault.removeObject(forKey: "userName")
                                
                                self.uDefault.removeObject(forKey: "userPassword")
                                
                            }
                            
                            
                            let sb=UIStoryboard(name: "Main", bundle: nil)
            
                        let customerListVC=sb.instantiateViewController(identifier: "customerVC") as! CustomerListViewController
                                   navigationController?.pushViewController(customerListVC, animated: true)

        }
                        else
        {
                           
            let alert = UIAlertController(title: "Wrong Username or Password", message: "Re-enter Username or password", preferredStyle: .alert)

                            alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
            
                            alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: {action
                                
                                in
                                
                                print("Cancel")
                            }))
            
                            self.present(alert, animated: true)
            
                            print(" Wrong username or password")
            
            
                        }
                
            
}
            
            
            func readInformationPlist() -> Bool{
               if let bundlePath = Bundle.main.path(forResource: "Users", ofType: "plist") {
                   let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
                    let usersList = dictionary!["Users"] as! NSArray
                
                    for u in usersList
                    {
                         let user = u as! NSDictionary
                        
                        let Username = user["username"]! as! String
                        
                        let Password = user["password"]! as! String
                        
                        if Username==txtusername.text! && Password==txtpswd.text!
                            
                        {
                            
                            return true
                        }
                    }
                
               
                   }
                
                    return false
                
                
               }
}
   
    
    

