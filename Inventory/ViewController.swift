//
//  ViewController.swift
//  Inventory
//
//  Created by Madison Williams on 4/17/19.
//  Copyright © 2019 Madison Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var InventoryTableView: UITableView!
    var inventory : Inventory?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return inventory?.products.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = InventoryTableView.dequeueReusableCell(withIdentifier: "productCell", for: indexPath)
        
        if let product = inventory?.products[indexPath.row] {
            cell.textLabel?.text = product.title
            cell.detailTextLabel?.text = "Quantity : \(product.stockedQuantity)"
            
           
        }
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        inventory = InventoryLoader.loadInventory(jsonFileName: "inventory")
        
        
        // Do any additional setup after loading the view.
    }


}

