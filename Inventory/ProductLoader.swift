//
//  ProductLoader.swift
//  Inventory
//
//  Created by Madison Williams on 4/17/19.
//  Copyright © 2019 Madison Williams. All rights reserved.
//

import Foundation
class InventoryLoader{
    
    class func loadInventory(jsonFileName : String)-> Inventory?{
        var inventory : Inventory?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            inventory = try? jsonDecoder.decode(Inventory.self, from: jsonData)
        }
    
        return inventory 
    
    }
    
}
