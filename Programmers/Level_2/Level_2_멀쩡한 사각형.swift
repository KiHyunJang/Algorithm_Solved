//
//  Level_2_멀쩡한 사각형.swift
//  
//
//  Created by Ki Hyun on 2022/05/23.
//

import Foundation

func GCD(_ n:Int, _ m:Int) -> Int {
    if m%n == 0 {
        return n
    }
    return GCD(m%n,n)
}

func solution(_ w:Int, _ h:Int) -> Int64{
    var answer:Int64 = Int64(w) * Int64(h)
    answer -= Int64(w) + Int64(h) - Int64(GCD(w,h))
    return answer
}
