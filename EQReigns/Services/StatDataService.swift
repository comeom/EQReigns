//
//  StatDataService.swift
//  EQReigns
//
//  Created by Wayne on 2021/10/19.
//

import Foundation

class StatDataService {
    
    static func getLocalData() -> [Stat] {
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "stats", ofType: "json")
        
        guard pathString != nil else {
            return [Stat]()
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let statData = try decoder.decode([Stat].self, from: data)
                
                // Add unique IDs
                for s in statData {
                    s.id = UUID()
                }
                
                // Return the recipes
                return statData
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
        
        return [Stat]()
    }
}

