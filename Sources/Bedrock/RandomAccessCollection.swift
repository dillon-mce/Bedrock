//
//  RandomAccessCollection.swift
//  
//
//  Created by Dillon McElhinney on 9/10/23.
//

import Foundation

public extension RandomAccessCollection {
    subscript(safe index: Index) -> Element? {
        guard indices.contains(index) else { return nil }
        return self[index]
    }
}
