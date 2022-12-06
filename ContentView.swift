//
//  ContentView.swift
//  Cart
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
    @State var index = 0
    
    @State var num1: Int = 6
    @State var num2: Int = 3
    
    
    @State var list = [
        Items(itemName: "Apples", quantity: "32"),
        Items(itemName: "Bananas", quantity: "48"),
        Items(itemName: "Broccoli", quantity: "72"),
        Items(itemName: "Cheese", quantity: "66"),
        Items(itemName: "Salmon", quantity: "54"),
        Items(itemName: "SPAM", quantity: "42")
    ]
        
    var body: some View {
        NavigationView {
            List {
                HStack{
                    TextField(("Item Name"), text: $tempItemName)
                    TextField(("Quantity"), text: $tempItemQuantity)
                }
                
                Button("Remove from Cart"){
                    if(tempItemName != ""){
                        removeItem()
                    }
                }
                
                ForEach(list) { listItem in
                    CustomCell(itemName: listItem.itemName, quantity: listItem.quantity)
                }
                
                Button("Place the Order"){
                    
                }
                
            }.navigationTitle("Cart")
        }
    }
    
    func removeItem(){
        for items in list {
            if items.itemName == tempItemName{
                let removeQuantity = Int(tempItemQuantity) ?? 0
                let totalQuantity = Int(items.quantity) ?? 0
                
                if(removeQuantity >= totalQuantity){
                    list.remove(at: index)
                }else{
                    let remain = totalQuantity - removeQuantity
                    items.quantity = String(remain)
                }
                
            }else{
                index += 1
            }
        }
    
        tempItemQuantity = ""
        tempItemName = ""
        index = 0
    }
}
