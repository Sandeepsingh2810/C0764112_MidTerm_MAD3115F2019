//
//  CustomerViewListViewController.swift
//  C0764112_MidTerm_MAD3115F2019-P1
//
//  Created by Sandeep Jangra on 2019-11-01.
//  Copyright © 2019 Sandeep Singh. All rights reserved.
//

import UIKit

class CustomerListViewController: UIViewController,UITableViewDelegate,UITableViewDataSource

    
{
     
    var tempvar = Singleton.getInstance()
    
    
    
   
    func numberOfSections(in tableView: UITableView) -> Int
    
    {
        
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
         return tempvar.returnCount()
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let l = tempvar.returnCustObject(custID: Int(indexPath.row+1))
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        
        cell.textLabel?.text = l?.fullName
        
        
         return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        
        return "All Customers"
    }
    
    override func viewWillAppear(_ animated: Bool) {
           customerListTable.reloadData()
           
       }
    @IBOutlet weak var customerListTable: UITableView!
    

