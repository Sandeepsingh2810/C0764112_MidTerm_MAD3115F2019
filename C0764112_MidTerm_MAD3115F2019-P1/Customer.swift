//
//  Customer.swift
//  C0764112_MidTerm_MAD3115F2019-P1
//
//  Created by Sandeep Jangra on 2019-11-01.
//  Copyright © 2019 Sandeep Singh. All rights reserved.
//

import Foundation


class Customer
    
{
    var customerID : Int?
    
    var customerFName: String?
    
    var customerLName : String?
    
    var fullName : String
    {
        
        return customerFName! + " " + customerLName!
    }
      var customerEmail: String?
    
    var totalBillAmount : Float?
    
    init(customerID:Int,customerFName:
            
            
            String,customerLName:String,customerEmail:String)
        {
            self.customerID=customerID
            
            self.customerFName=customerFName
            
            self.customerLName=customerLName
            
            self.customerEmail=customerEmail
            
        }
    }

