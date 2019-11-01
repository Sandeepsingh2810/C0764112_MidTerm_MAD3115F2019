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
    var cxID : Int?
    
    var cxFName: String?
    
    var cxLName : String?
    
    var fullName : String
    {
        
        return cxFName! + " " + cxLName!
    }
      var cxEmail: String?
    
    var totalBillAmount : Float?
    
    init(customerID:Int,customerFName:
            
            
            String,customerLName:String,customerEmail:String)
        {
            self.cxID=customerID
            
            self.cxFName=customerFName
            
            self.cxLName=customerLName
            
            self.cxEmail=customerEmail
            
        }
    }

