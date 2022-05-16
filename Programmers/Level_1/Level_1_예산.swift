//
//  Level_1_예산.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var dSort = d.sorted(by : <)
    var money = 0
    for i in 0 ..< dSort.count {
        if money+dSort[i] <= budget {
            money += dSort[i]
        } else {
            return i
        }
    }
    return dSort.count
}
