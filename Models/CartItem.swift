//
//  CartItem.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-28.
//

import Foundation

// thist structb stores one item inside the cart
struct CartItem: Identifiable {
    
    // unique id for cart item
    var id = UUID()
    
    // coffee information
    var coffee: Coffee
    
    // quantity selected
    var quantity: Int
}
