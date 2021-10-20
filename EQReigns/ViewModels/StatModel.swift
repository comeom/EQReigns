//
//  StatModel.swift
//  EQReigns
//
//  Created by Wayne on 2021/10/19.
//

import Foundation

class StatModel: ObservableObject {
    
    @Published var stats = [Stat]()
    
    init() {
        
        // Create an instance of data service and get data
        self.stats = StatDataService.getLocalData()
        
    }
}
