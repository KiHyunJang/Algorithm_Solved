//
//  Level_1_최소직사각형.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation
func solution(_ sizes:[[Int]]) -> Int {
    var MaxValue = 0
    var MaxValue2 = 0
    for size in sizes {
        var a = size[0]
        var b = size[1]
        if a < b {
            (a,b)=(b,a)
        }
        if a > MaxValue {
            MaxValue = a
        }
        if b > MaxValue2 {
            MaxValue2 = b
        }
    }
    return MaxValue * MaxValue2
}
