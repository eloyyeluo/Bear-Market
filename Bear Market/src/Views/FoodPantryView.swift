//
//  FoodPantryView.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/4/22.
//

import SwiftUI

struct FoodPantryView: View {
    @State var tempItemName: String = ""
        @State var index: Int = 0

        @State var list = [
            Items(itemName: "Apples", stock: "In Stock"),
            Items(itemName: "Bananas", stock: "In Stock"),
            Items(itemName: "Broccoli", stock: "Out of Stock"),
            Items(itemName: "Cheese", stock: "In Stock"),
            Items(itemName: "Eggs", stock: "Out of Stock"),
            Items(itemName: "Milk", stock: "In Stock"),
            Items(itemName: "Pasta", stock: "Out of Stock"),
            Items(itemName: "Salmon", stock: "In Stock"),
            Items(itemName: "SPAM", stock: "Out of Stock"),
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
                        TextField(("Item Name"), text: $tempItemName)
                        TextField((""), text: $tempItemName)
                    }

                    Button("Add to Cart"){
                    Button("Remove from Cart"){
                        if(tempItemName != ""){
                            addItem()
                            removeItem()
                        }
                    }

                    ForEach(list) { listItem in
                        CustomCell(itemName: listItem.itemName, stock: listItem.stock)
                    }

                    Button("Place the Order"){
                        addItem()
                    }
                }.navigationTitle("Food Pantry")

                }.navigationTitle("Cart")
            }
        }

    func addItem(){
        
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

struct FoodPantryView_Previews: PreviewProvider {
    static var previews: some View {
        FoodPantryView()
    }
}
