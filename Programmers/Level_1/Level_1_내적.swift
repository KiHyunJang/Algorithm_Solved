//
//  Level_1_내적.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0
    for index in 0 ..< a.count {
        result += (a[index]*b[index])
    }
    return result
}
