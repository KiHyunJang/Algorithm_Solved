//
//  Level_1_평균 구하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/02.
//

import Foundation
func solution(_ arr:[Int]) -> Double {
    let avg = Double(arr.reduce(0) {$0+$1}) / Double(arr.count)
    return avg
}
