//
//  ContentView.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-21.
//

import SwiftUI
import Foundation
import Combine

struct ContentView: View {
    
    // connects this view to order storage
    @StateObject var store = OrderStore()
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                // displays every saved order
                ForEach(store.orders) { order in
                    
                    VStack(alignment: .leading) {
                        
                        Text(order.name)
                            .font(.headline)
                        
                        Text("\(order.drink) - \(order.size)")
                            .font(.subheadline)
                        
                        Text(order.date.formatted(date: .abbreviated, time: .shortened))
                            .font(.caption2)
                        
                        if !order.notes.isEmpty {
                            
                            Text(order.notes)
                                .font(.caption)
                        }
                    }
                }
                .onDelete(perform: deleteOrder)
            }
            .listStyle(.insetGrouped)
            
            .navigationTitle("Tims Coffee Run")                        .toolbar
            {
                
                NavigationLink(destination: AddOrderView(store: store)) {
                    
                    Text("Add")
                }
            }
        }
    }
    
    // deletes the selected order from the list
    func deleteOrder(indexSet: IndexSet) {
        
        store.orders.remove(atOffsets: indexSet)
    }
}

#Preview {
    
    ContentView()
}
