//
//  Singleton.swift
//  C0764112_MidTerm_MAD3115F2019-P1
//
//  Created by Sandeep Jangra on 2019-11-01.
//  Copyright © 2019 Sandeep Singh. All rights reserved.
//

import Foundation

class Singleton: NSObject
    
{
     
    private var customerDictionary  = [Int:Customer]()
    
   
    private static var obj = Singleton()
    
    
    private override init() {
        
    }
    
    
    internal static func getInstance() -> Singleton
        
    {
        
        return obj
    }
    
   func addNewCustomer(First_Name : String, Last_Name : String, email : String)
          
          
      {
              let C = customerDictionary.count + 1
              
            let temp = Customer(customerID: C, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
                  
                  
                        self.AddCustomer(customer: temp)
                  
                  
                    }
                    
                    func returnCustObject(custID : Int) -> Customer?
                        
                        
                    {
                        for (k,v) in customerDictionary
                            
                        {
                            if custID == k
                                
                                
                            {
                                
                                return v
                                
                            }
                            
                        }
                        
                        return nil
                        
                    }
                    
                    func returnCount() -> Int
                        
                        
                    {
                        
                        return customerDictionary.count
                        
                    }
    
                    
                    func createCust()
                        
                        
                    {
                        
                    let Customer1 = Customer(customerID: 1, customerFName: "Gurlagan", customerLName: "Singh", customerEmail: "guri123@gmail.com ")
                        
                        AddCustomer(customer: Customer1)
                        
                        
                        let Customer2 = Customer(customerID: 2, customerFName: "karan", customerLName: "kumar", customerEmail: "karan@gmail.com ")
                        
                        AddCustomer(customer: Customer2)
                        
                        
                        let Customer3 = Customer(customerID: 3, customerFName: "Simar", customerLName: "Singh", customerEmail: "simar@gmail.com ")
                        
                        AddCustomer(customer: Customer3)
                        
                        
                        let Customer4 = Customer(customerID: 4, customerFName: "Simaranjeet", customerLName: "Singh", customerEmail: "simran@gmail.com ")
                        
                        AddCustomer(customer: Customer4)
                        
                        let Customer5 = Customer(customerID: 5, customerFName: "Ankita", customerLName: "Jain", customerEmail: "jain@gmail.com ")
                        
                        AddCustomer(customer: Customer5)
                        
                        let Customer6 = Customer(customerID: 6, customerFName: "Varinder", customerLName: "Dhillon", customerEmail: "dhilon@gmail.com ")
                        
                        AddCustomer(customer: Customer6)
                        
                        
                    }

                    
                    func AddCustomer(customer: Customer)
                        
                    {
                        
                customerDictionary.updateValue(customer, forKey: customer.cxID!)
                        
                    }
    
                    func printdata()
                        
                        
                    {
                        for i in customerDictionary.values
                            
                        {
                            print(i.cxFName!)
                            
                        }
                        
                    }
                }




