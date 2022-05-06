//
//  Level_1_두 정수 사이의 합.swift
//  
//
//  Created by Ki Hyun on 2022/05/06.
//

import Foundation
func solution(_ a:Int, _ b:Int) -> Int64 {
    if abs(a-b)%2 == 0 {
        return Int64(((a+b)*abs(a-b)/2)+((a+b)/2))
    }
    return Int64((a+b)*((abs(a-b)/2)+1))
}
