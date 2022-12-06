//
//  CartCell.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/6/22.
//

import Foundation

import SwiftUI

struct CartCell: View {

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

