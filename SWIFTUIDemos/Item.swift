//
//  Item.swift
//  SWIFTUIDemos
//
//  Created by Apple on 26/08/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
