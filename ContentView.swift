//
//  ContentView.swift
//  Food Pantry
//
//  Created by Canhui Huang on 12/4/22.
//

import SwiftUI

class Items: Identifiable {
    var itemName: String
    
    var stock: String
    
    init(itemName: String, stock: String) {
        self.itemName = itemName
        
        self.stock = stock
    }
}

struct ContentView: View {
    @State var tempItemName: String = ""
    
    @State var list = [
        Items(itemName: "Apples", stock: "In Stock"),
        Items(itemName: "Bananas", stock: "In Stock"),
        Items(itemName: "Broccoli", stock: "Out of Stock"),
        Items(itemName: "Cheese", stock: "In Stock"),
        Items(itemName: "Eggs", stock: "Out of Stock"),
        Items(itemName: "Milk", stock: "In Stock"),
        Items(itemName: "Pasta", stock: "Out of Stock"),
        Items(itemName: "Salmon", stock: "In Stock"),
        Items(itemName: "SPAM", stock: "Out of Stock")
    ]
        
    var body: some View {
        NavigationView {
            List {
                HStack{
                    TextField(("Item Name"), text: $tempItemName)
                }
                
                Button("Add to Cart"){
                    if(tempItemName != ""){
                        addItem()
                    }
                }
                
                ForEach(list) { listItem in
                    CustomCell(itemName: listItem.itemName, stock: listItem.stock)
                }
            }.navigationTitle("Food Pantry")
        }
    }
    
    func addItem(){
        
    }
}
