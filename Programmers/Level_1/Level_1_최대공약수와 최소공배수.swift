//
//  Level_1_최대공약수와 최소공배수.swift
//  
//
//  Created by Ki Hyun on 2022/05/02.
//

import Foundation
func GCD(_ n:Int, _ m:Int) -> Int {
    if m%n == 0 {
        return n
    }
    return GCD(m%n,n)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [GCD(n,m),m*n/GCD(n,m)]
}
