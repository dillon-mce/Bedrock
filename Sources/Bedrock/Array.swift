//
//  Array.swift
//  
//
//  Created by Dillon McElhinney on 5/19/20.
//

import Foundation

public extension Array where Element: Hashable {

    /// Returns a copy of the array with all duplicates removed. O(n) time complexity.
    func deduplicated() -> [Element] {
        var dict: [Element: Bool] = [:]

        return filter {
            dict.updateValue(true, forKey: $0) == nil
        }
    }
}
