//
//  OrderStore.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-21.
//
import SwiftUI
import Combine

class OrderStore: ObservableObject {
    
    @Published var orders: [Order] = []
    
    func addOrder(order: Order) {
        orders.append(order)
        
        func deleteOrder(indexSet: IndexSet) {
            
            orders.remove(atOffsets: indexSet)
        }
    }
}
