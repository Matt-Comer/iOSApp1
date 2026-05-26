//
//  OrderStore.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-21.
//
import SwiftUI
import Combine

// This class stores and manages all Tim Hortons orders
class OrderStore: ObservableObject {
    
    // Published lets the app update the screen when orders change
    @Published var orders: [Order] = []
    
    // Adds a new order to the order list
    func addOrder(order: Order) {
        orders.append(order)
    }
    
    // Deletes an order from the order list
    func deleteOrder(indexSet: IndexSet) {
        orders.remove(atOffsets: indexSet)
    }
}
