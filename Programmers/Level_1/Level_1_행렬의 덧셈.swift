//
//  Level_1_행렬의 덧셈.swift
//  
//
//  Created by Ki Hyun on 2022/05/01.
//

import Foundation
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arr : [[Int]] = Array(repeating : Array(repeating: 0, count : arr1[0].count), count: arr1.count)
    for i in 0..<arr1.count {
        for j in 0..<arr1[0].count {
            arr[i][j] += (arr1[i][j]+arr2[i][j])
        }
    }
    return arr
}
