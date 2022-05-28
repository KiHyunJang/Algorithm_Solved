//
//  Level_2_위장.swift
//  
//
//  Created by Ki Hyun on 2022/05/28.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    let types = clothes.compactMap({ $0.last })
    let typeSet = Set(types)
    let categories = Array(typeSet)

    let counts = categories.map({ category in
        return clothes.filter({ $0.last == category }).count + 1
    })

    return counts.reduce(1,  { $0 * $1 }) - 1
}
