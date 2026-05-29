//
//  CartManager.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-28.
//

import Foundation
import Combine


// this class manages the shopping cart
class CartManager: ObservableObject {
    
    // stores all cart items
    @Published var cartItems: [CartItem] = []
    
    // add coffee to cart
    func addToCart(coffee: Coffee) {
        
        // check if coffee already exists in cart
        if let index = cartItems.firstIndex(where: { $0.coffee.id == coffee.id }) {
            
            // increase quantity
            cartItems[index].quantity += 1
            
        } else {
            
            // create new cart item
            let newItem = CartItem(coffee: coffee, quantity: 1)
            
            // add item to cart
                        cartItems.append(newItem)
                    }
                }
                
                // calculate total cart price
    func cartTotal() -> Double {
        
        // start total at zero
        var total = 0.0
        
        // loop through cart items
        for item in cartItems {
            
            // add item total
            total += item.coffee.price * Double(item.quantity)
        }
        // return final total
               return total
           }
       }
