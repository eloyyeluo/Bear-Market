//
//  FoodPantryCell.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/6/22.
//

import SwiftUI

struct FoodPantryCell: View {
    var itemName: String
       
       var quantity: Int
       
       var body: some View {
           HStack {
               Image(itemName)
                   .resizable()
                   .aspectRatio(contentMode: .fill)
                   .frame(width: 50, height: 50)
               Text(itemName)
                   .padding(20)
               
               Spacer()
               
               Text(String(quantity))
           }
       }
}

struct FoodPantryCell_Previews: PreviewProvider {
    static var previews: some View {
        FoodPantryCell(itemName: "Bananas", quantity: 5)
    }
}
