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
        SummaryView();
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
