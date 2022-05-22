//
//  Level_2_점프와 순간이동.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func solution(_ n:Int) -> Int {
    var cnt = 0
    var n = n
    var mod = 0
    while n != 0{
        mod = n%2
        n = n/2
        cnt += mod
    }
    return cnt
}
