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
          WelcomeView()
        }
    }
}

    struct ContentView_Preview: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
