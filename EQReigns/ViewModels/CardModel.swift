//
//  CardModel.swift
//  EQReigns
//
//  Created by Wayne on 2021/10/19.
//

import Foundation

class CardModel: ObservableObject {
    
    @Published var cards = [Card]()
    
    init() {
        
        // Create an instance of data service and get data
        self.cards = CardDataService.getLocalData()
        
    }
}
