//
//  ItemModel.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/5/22.
//

import Foundation

class Items: Identifiable {
    
    var itemName: String
    var quantity: Int
    
    init(itemName: String, quantity: Int) {
        self.itemName = itemName
        self.quantity = quantity
    }
}

