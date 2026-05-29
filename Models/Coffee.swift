//
//  Coffee.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-28.
//

import Foundation

// this struct stores all coffee information
struct Coffee: Identifiable, Codable {
    
    // unique id for each coffee
    var id = UUID()
    
    // coffee name
    var name: String
    
    // coffee description
    var description: String
    
    // coffee price
    var price: Double
    
    // coffee image name from assets
    var image: String
    
    // coffee category hot or cold
    var category: String
    
}

