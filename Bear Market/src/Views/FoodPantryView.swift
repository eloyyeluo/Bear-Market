//
//  ContentView.swift
//  Food Pantry
//
//  Created by Canhui Huang on 12/4/22.
//

import SwiftUI

struct FoodPantryView: View {
    @State var tempItemName: String = ""
    
    @State var list = [
        Items(itemName: "Apples", quantity: "In Stock"),
//        Items(itemName: "Bananas", quantity: "In Stock"),
//        Items(itemName: "Broccoli", quantity: "Out of Stock"),
//        Items(itemName: "Cheese", quantity: "Out of Stock"),
//        Items(itemName: "Eggs", quantity: "In Stock"),
//        Items(itemName: "Milk", quantity: "Out of Stock"),
//        Items(itemName: "Pasta", quantity: "In Stock"),
//        Items(itemName: "Salmon", quantity: "Out of Stock"),
//        Items(itemName: "SPAM", quantity: "Out of Stock")
    ]
        
    var body: some View {
        NavigationView {
            List {
                HStack{
                    TextField(("Item Name"), text: $tempItemName)
                }
                
                Button("Add to Cart"){
                    if(tempItemName != ""){
                        addItem(tempItemName: tempItemName)
                    }
                }
                
                ForEach(list) { listItem in
                    CustomCell(itemName: listItem.itemName, quantity: listItem.quantity)
                }
            }.navigationTitle("Food Pantry")
        }
    }
    
    func addItem(tempItemName: String){
        if (list.contains(where: {$0.quantity == "In Stock" && $0.itemName != tempItemName})) {
            list.append(Items(itemName: tempItemName, quantity: "In Stock"))
        }
    }
}
