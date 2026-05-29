//
//  DataLoader.swift
//  TimHortensApp
//
//  Created by matthew comer on 2026-05-28.
//

import Foundation

// this function loads coffee data from the json file
func loadCoffeeData() -> [Coffee] {
    
    // find the coffeeData.json file in the app bundle
    gaurd let url = Bundle.main.url(forResource: "coffeData, withExtension: "json") else {
                                    print("Could not find coffeeData.json")
                                    return []
}
// try to load the json data
    do {
        
        // get data from file
        let data = try Data(contentsOf: url)
        
        // decode json into coffee array
        let coffees = try JSONDecoder().decode([Coffee].self, from: data)
        
        // return coffee list
        return coffees
        
    } catch {
        
        // show error if json fails
        print("Could not load coffee data")
        return []
    }
}
    }
