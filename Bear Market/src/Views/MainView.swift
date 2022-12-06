//
//  MainView.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/5/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            TabView {
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
            }.navigationBarBackButtonHidden(true)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
