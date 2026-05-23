//
//  Order.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-21.
//

import Foundation

import Combine

// This struct stores one Tim Hortons coffee order
struct Order: Identifiable, Codable {
    
    // Unique id for each order
    var id = UUID()
    
    // Name of the person ordering
    var name: String
    
    // Drink choice
    var drink: String
    
    // Drink size
    var size: String
    
    // Extra notes for the order
    var notes: String
    
    // date and time the order was created
    var date = Date()
    
}
