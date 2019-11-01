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
    

private func addLogoutButton()
    
    
{
    
    let btnLogout=UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(CustomerListViewController.logout(sender:)))
    
   
    
    navigationItem.leftBarButtonItem=btnLogout
    
}
    

@objc
func logout(sender: UIBarButtonItem)
    
    
{
    
    print("logout")
    
    navigationController?.popViewController(animated: true)
    
    
}

    override func viewDidLoad()
       {
           super.viewDidLoad()
           
           customerListTable.delegate=self
           
             customerListTable.dataSource=self
           
           navigationItem.hidesBackButton=true
           
           
              addLogoutButton()
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

