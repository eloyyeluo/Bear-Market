//
//  MainView.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/5/22.
//

import SwiftUI

let navTitles = ["Summary", "Cart", "Food Pantry", "Map"]
struct MainView: View {
    @State var selection = 0
    
    var body: some View {
        NavigationView{
            TabView(selection: $selection) {
                SummaryView()
                    .tabItem {
                        Image(systemName: "book.circle")
                                            Text("Summary")
                    }.tag(0)
                CartView()
                    .tabItem {
                        Image(systemName: "cart")
                                            Text("Cart")
                    }.tag(1)
                FoodPantryView()
                    .tabItem{
                        Image(systemName: "person.crop.circle")
                                            Text("Food Pantry")
                    }.tag(2)
                MapView()
                    .tabItem {
                        Image(systemName: "location")
                                            Text("Map")
                    }.tag(3)
                    
            }
            .navigationBarBackButtonHidden(true)
            .navigationTitle(navTitles[selection])

        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
