//
//  Hike.swift
//  SWIFTUIDemos
//
//  Created by Apple on 04/09/24.
//

import Foundation
struct Hike:Identifiable,Hashable{
    var id = UUID()
    var name : String
    var image: String
    var miles:Double
}
