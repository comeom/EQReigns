//
//  CardDataService.swift
//  EQReigns
//
//  Created by Wayne on 2021/10/19.
//

import Foundation

class CardDataService {
    
    static func getLocalData() -> [Card] {
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "cards", ofType: "json")
        
        guard pathString != nil else {
            return [Card]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let cardData = try decoder.decode([Card].self, from: data)
                
                // Add unique IDs
                for c in cardData {
                    c.id = UUID()
                }
                
                // Return the recipes
                return cardData
            }
            catch {
                // error with parsing json
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }
        
        return [Card]()
    }
}

