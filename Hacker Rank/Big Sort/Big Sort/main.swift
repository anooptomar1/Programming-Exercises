//
//  main.swift
//  Big Sort
//
//  Created by Wesley Van der Klomp on 7/31/17.
//  Copyright © 2017 Wesley Van der Klomp. All rights reserved.
//
// https://www.hackerrank.com/challenges/big-sorting
//

/*
 Sample Input 0
 
 6
 31415926535897932384626433832795
 1
 3
 10
 3
 5
 
 Sample Output 0
 
 1
 3
 3
 5
 10
 31415926535897932384626433832795
 */

import Foundation

let n = Int(readLine()!.trimmingCharacters(in: .whitespacesAndNewlines))!

var unsorted: [String] = []

for _ in 1...n {
    let i = readLine(strippingNewline: true)!.trimmingCharacters(in: .whitespacesAndNewlines)
    
    unsorted.append(i)
}

let sorted = unsorted.sorted { (a, b) -> Bool in
    
    switch a.compare(b, options: .numeric, range: nil, locale: nil) {
    case .orderedAscending: return true
    case .orderedSame: return true
    case .orderedDescending: return false
    }
}

for a in sorted {
    print(a)
}









