//
//  InventoryCollectionViewController.swift
//  Inventory
//
//  Created by Olivia Bishop on 11/28/18.
//  Copyright © 2018 Olivia Bishop. All rights reserved.
//

import UIKit

class InventoryCollectionViewController: UIViewController {

    @IBOutlet weak var displayTextView: UITextView!
    
   let jsonFileName = "inventory"
    
   

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let inventorySet = InventoryCollectionLoader.load(jsonFileName: jsonFileName) {
            var displayInfo = ""
            displayInfo += "Status: \(inventorySet.status)\n"
            for photo in InventorySet.inventory {
                displayInfo += "Products:\n"
                displayInfo += "\(inventory.id)\n"
                displayInfo += "\(inventory.category)\n"
                displayInfo += "\(inventory.title)\n"
                displayInfo += "\(inventory.price)\n"
                displayInfo += "\(inventory.stockedQuantity)\n"
                
            }
            displayTextView.text = displayInfo
        } else {
            displayTextView.text = "Error."
        }
    }
}
        
        
        
        
        
        
    

        
        
        
        
        
        
        
        
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */



