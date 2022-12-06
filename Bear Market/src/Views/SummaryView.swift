//
//  SummaryView.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/4/22.
//

import SwiftUI

struct SummaryView: View {
    @State var tempItemName: String = ""
    @State var locker: String = "A5"
    @State var code: String = "4396"
    
    @State var list = [
        Items(itemName: "Apples", quantity: 4),
//        Items(itemName: "Bananas", quantity: ""),
//        Items(itemName: "Broccoli", quantity: ""),
//        Items(itemName: "Salmon", quantity: ""),
//        Items(itemName: "SPAM", quantity: "")
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
                        CustomCell(itemName: listItem.itemName, quantity: listItem.quantity)
                    }
                
            }.navigationTitle("Summary")
        }
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView()
    }
}
