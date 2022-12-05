//
//  ContentView.swift
//  Summary
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
    var body: some View {
        NavigationView {
            TabView{
                SummaryView()
                    .tabItem {
                        Image(systemName: "book.circle")
                                            Text("Summary")
                    }
                CartView()
                    .tabItem {
                        Image(systemName: "cart")
                                            Text("Cart")
                    }
                FoodPantryView()
                    .tabItem{
                        Image(systemName: "person.crop.circle")
                                            Text("Food Pantry")
                    }
            }
        }
    }
}

    struct ContentView_Preview: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
