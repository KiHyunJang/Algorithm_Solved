//
//  Level_1_음양 더하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = 0
    for i in 0 ..< absolutes.count {
        result += signs[i] == true ? absolutes[i] : -absolutes[i]
    }
    return result
}
