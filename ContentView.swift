//
//  ContentView.swift
//  Cart
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
    @State var index: Int = 0
    
    @State var list = [
        Items(itemName: "Apples", stock: ""),
        Items(itemName: "Bananas", stock: ""),
        Items(itemName: "Broccoli", stock: ""),
        Items(itemName: "Cheese", stock: ""),
        Items(itemName: "Salmon", stock: ""),
        Items(itemName: "SPAM", stock: "")
    ]
        
    var body: some View {
        NavigationView {
            List {
                HStack{
                    TextField((""), text: $tempItemName)
                }
                
                Button("Remove from Cart"){
                    if(tempItemName != ""){
                        removeItem()
                    }
                }
                
                ForEach(list) { listItem in
                    CustomCell(itemName: listItem.itemName)
                }
                
                Button("Place the Order"){
                    
                }
                
            }.navigationTitle("Cart")
        }
    }
    
    func removeItem(){
        for items in list {
            if items.itemName == tempItemName{
                list.remove(at: index)
            }else{
                index += 1
            }
        }
        
        tempItemName = ""
        index = 0
    }
}
