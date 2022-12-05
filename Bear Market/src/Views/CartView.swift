//
//  CartView.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/4/22.
//

import SwiftUI

struct CartView: View {
    
    @State var tempItemName: String = ""
    
    @State var list = [
        Items(itemName: "Apples", quantity: "In quantity"),
        Items(itemName: "Bananas", quantity: "In quantity"),
        Items(itemName: "Broccoli", quantity: "Out of quantity"),
        Items(itemName: "Cheese", quantity: "In quantity"),
        Items(itemName: "Eggs", quantity: "Out of quantity"),
        Items(itemName: "Milk", quantity: "In quantity"),
        Items(itemName: "Pasta", quantity: "Out of quantity"),
        Items(itemName: "Salmon", quantity: "In quantity"),
        Items(itemName: "SPAM", quantity: "Out of quantity")
    ]
    
    var body: some View {
        NavigationView {
            List {
                HStack{
                    TextField(("Item Name"), text: $tempItemName)
                }
                
                Button("Add to Cart"){
                    //                        if(tempItemName != ""){
                    //                            addItem()
                    //                        }
                }
                
                ForEach(list) { listItem in
                    CustomCell(itemName: listItem.itemName, quantity: listItem.quantity)
                }
            }.navigationTitle("Cart")
        }
    }
}
struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
