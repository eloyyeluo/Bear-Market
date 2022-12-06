//
//  ContentView.swift
//  Food Pantry
//
//  Created by Canhui Huang on 12/4/22.
//

import SwiftUI

struct FoodPantryView: View {
    @State var tempItemName: String = ""
    @ObservedObject var input = NumbersOnly()
    @State var list = [
        Items(itemName: "Apples", quantity: 5),
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
        List {
            Section {
                HStack{
                    TextField(("Item Name"), text: $tempItemName)
                    TextField(("Quantity"), text: $input.value)
                }
                
                Button("Add to Cart"){
                    if(tempItemName != "" && Int(input.value) != 0){
                        addItem(tempItemName: tempItemName, valu: Int(input.value)!)
                    }
                }
            }
            ForEach(list) { listItem in
                FoodPantryCell(itemName: listItem.itemName, quantity: listItem.quantity)
            }
        }
    }
    
    func addItem(tempItemName: String, valu: Int){
        if (list.contains(where: {$0.quantity != 0 && $0.itemName != tempItemName})) {
            list.append(Items(itemName: tempItemName, quantity: valu))
        }
    }
}
