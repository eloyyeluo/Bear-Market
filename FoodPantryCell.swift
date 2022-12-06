//
//  CustomCell.swift
//  Food Pantry
//
//  Created by Canhui Huang on 12/4/22.
//

import SwiftUI

struct FoodPantryCell: View {
    
    var itemName: String
    
    var quantity: String
    
    var body: some View {
        HStack {
            Image(itemName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            Text(itemName)
                .padding(20)
            
            Spacer()
            
            Text(quantity)
        }
    }
}
