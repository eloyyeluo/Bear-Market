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
