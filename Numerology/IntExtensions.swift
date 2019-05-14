//
//  IntExtensions.swift
//  Numerology
//
//  Created by Mark Hamilton on 5/13/19.
//  Copyright © 2019 Mark Hamilton. All rights reserved.
//

import Foundation

internal extension Int {
    var digits: [Int] {
        return String(self).compactMap{ Int(String($0)) }
    }
    
    var reduction:  Int {
        return self.digits.reduce(0,+)
    }
    
    func multiplyBy(array: [Int], zeros: Bool) -> Int {
        var i : Int = self
        for int in array {
            i = !zeros && int == 0 ? i : i * int
        }
        return i
    }
}
