//
//  InventoryCollectionLoader.swift
//  Inventory
//
//  Created by Olivia Bishop on 11/28/18.
//  Copyright © 2018 Olivia Bishop. All rights reserved.
//

import Foundation

class InventoryCollectionLoader {
    
    class func load(jsonFileName: String) -> InventorySet? {
        var inventorySet: InventorySet?
        let jsonDecoder = JSONDecoder()
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            inventorySet = try? jsonDecoder.decode(InventorySet.self, from: jsonData)
        }
        
        return inventorySet
    }
}
