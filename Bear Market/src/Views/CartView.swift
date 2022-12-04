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
                    //                        if(tempItemName != ""){
                    //                            addItem()
                    //                        }
                }
                
                ForEach(list) { listItem in
                    CustomCell(itemName: listItem.itemName, stock: listItem.stock)
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
