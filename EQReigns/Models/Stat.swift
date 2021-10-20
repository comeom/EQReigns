//
//  Stat.swift
//  EQReigns
//
//  Created by Wayne on 2021/10/19.
//

import Foundation

class Stat: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var image:String
    var amount:Int
    
}
