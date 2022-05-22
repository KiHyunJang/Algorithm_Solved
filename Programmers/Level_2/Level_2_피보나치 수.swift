//
//  Level_2_피보나치 수.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func solution(_ n:Int) -> Int {
    var fibo = [0,1]
    var c = 1
    while c < n{
        fibo.append((fibo[c]+fibo[c-1]) % 1234567)
        c += 1
    }
    return fibo[n]
}
