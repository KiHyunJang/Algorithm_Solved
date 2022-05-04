//
//  Level_1_소수 찾기.swift
//  
//
//  Created by Ki Hyun on 2022/05/04.
//

import Foundation
func PrimeNumCheck(_ num:Int) -> Int {
    for i in 2..<Int(sqrt(Double(num)))+1 {
        if num%i==0 {
            return 0
        }
    }
    return 1
}

func solution(_ n:Int) -> Int {
    var cnt = 0
    for i in 2..<n+1 {
        cnt+=PrimeNumCheck(i)
    }
