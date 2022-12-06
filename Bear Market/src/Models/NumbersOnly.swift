//
//  NumbersOnly.swift
//  Bear Market
//
//  Created by Eloy Ye Luo on 12/6/22.
//

import Foundation

class NumbersOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}
