//
//  InventoryCollection.swift
//  Inventory
//
//  Created by Olivia Bishop on 11/28/18.
//  Copyright © 2018 Olivia Bishop. All rights reserved.
//

import Foundation

struct InventorySet: Codable {
    var status: String
    var products: [InventoryItem]
    
    
    enum CodingKeys: String, CodingKey {
        case status
        case products
    }
}

struct InventoryItem: Codable {
    var id: String
    var category: String
    var title: String
    var price: Double
    var stockedQuantity: Int
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case category
        case title
        case price
        case stockedQuantity
        
    }
}

//var inventorySet: InventorySet?
//let jsonDecoder = JSONDecoder()
//jsonDecoder.dateDecodingStrategy = .iso8601
//inventorySet = try? jsonDecoder.decode(InventorySet.self, from: jsonData)
