//
//  AddOrderView.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-21.
//

import SwiftUI

import Foundation


struct AddOrderView: View {
    
    // This connects AddOrderView to OrderStore
    @ObservedObject var store: OrderStore
    
    // State variables for the form
    @State private var name = ""
    @State private var drink = ""
    @State private var size = "Medium"
    @State private var notes = ""
    
    // Array for size choices
    let sizes = ["Small", "Medium", "Large","Xlarge"]
    
    var body: some View {
        Form {
            Section(header: Text("Person")) {
                TextField("Name", text: $name)
            }
            
            Section(header: Text("Order")) {
                TextField("Drink (e.g Coffee)", text: $drink)
                
                Picker("Size", selection: $size) {
                    ForEach(sizes, id: \.self) {
                        Text($0)
                    }
                }
                
                TextField("Notes", text: $notes)
            }
            
            Button("Save Order") {
                let newOrder = Order(
                    name: name,
                    drink: drink,
                    size: size,
                    notes: notes
                )
                
                store.addOrder(order: newOrder)
            }
        }
    }
}

#Preview {
    AddOrderView(store: OrderStore())
}
