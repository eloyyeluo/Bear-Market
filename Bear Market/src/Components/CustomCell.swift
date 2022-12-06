//
//  CustomCell.swift
//  Summary
//
//  Created by Canhui Huang on 12/4/22.
//

import SwiftUI

struct CustomCell: View {
    
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
            if (quantity == 0) {
                Text("Out of Stock")
            } else if (quantity > 0 && quantity < 11) {
                Text("\(quantity) remaining")
                    .foregroundColor(.yellow)
            } else {
                Text("In Stock")
            }
            
        }
    }
}
