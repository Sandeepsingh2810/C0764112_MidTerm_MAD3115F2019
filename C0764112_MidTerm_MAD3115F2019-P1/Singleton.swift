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
          
          
      
