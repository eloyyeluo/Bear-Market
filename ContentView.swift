//
//  ContentView.swift
//  Summary
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
    @State var locker: String = "A5"
    @State var code: String = "4396"
    
    @State var list = [
        Items(itemName: "Apples", stock: ""),
        Items(itemName: "Bananas", stock: ""),
        Items(itemName: "Broccoli", stock: ""),
        Items(itemName: "Salmon", stock: ""),
        Items(itemName: "SPAM", stock: "")
    ]
        
    var body: some View {
        NavigationView {
            List {
                HStack{
                    Text("Your Locker: ")
                    Text(locker)
                }
                
                HStack{
                    Text("Your Code: ")
                    Text(code)
                }
                
                HStack{
                    Text("Items: ")
                }
                    ForEach(list) {listItem in
                        CustomCell(itemName: listItem.itemName)
                    }
                
            }.navigationTitle("Summary")
        }
    }
}
