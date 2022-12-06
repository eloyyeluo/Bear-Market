//
//  ContentView.swift
//  Food Pantry
//
//  Created by Canhui Huang on 12/4/22.
//

import SwiftUI

class Items: Identifiable {
    var itemName: String
    
    var quantity: String
    
    init(itemName: String, quantity: String) {
        self.itemName = itemName
        self.quantity = quantity
    }
}

struct ContentView: View {
    @State var tempItemName: String = ""
    @State var tempItemQuantity: String = ""
    
    @State var list = [
        Items(itemName: "Apple", quantity: "87"),
        Items(itemName: "Banana", quantity: "92"),
        Items(itemName: "Broccoli", quantity: "34"),
        Items(itemName: "Cheese", quantity: "66"),
        Items(itemName: "Egg", quantity: "78"),
        Items(itemName: "Milk", quantity: "102"),
        Items(itemName: "Pasta", quantity: "44"),
        Items(itemName: "Salmon", quantity: "59"),
        Items(itemName: "SPAM", quantity: "33")
    ]
        
    var body: some View {
        NavigationView {
            List {
                HStack{
                    TextField(("Item Name"), text: $tempItemName)
                    TextField(("Quantity"), text: $tempItemQuantity)
                }
                
                Button("Add to Cart"){
                    if(tempItemName != "" && tempItemQuantity != ""){
                        addItem()
                    }
                }
                
                ForEach(list) { listItem in
                    FoodPantryCell(itemName: listItem.itemName, quantity: listItem.quantity)
                }
            }.navigationTitle("Food Pantry")
        }
    }
    
    func addItem(){
        for items in list{
            if items.itemName == tempItemName{
                let totalQuantity = Int(items.quantity) ?? 0
                let demand = Int(tempItemQuantity) ?? 0
                if totalQuantity >= demand{
                    let remain = totalQuantity - demand
                    items.quantity = String(remain)
                }else{
                    items.quantity = "0"
                }
            }
        }
        tempItemQuantity = ""
        tempItemName = ""
    }
}
