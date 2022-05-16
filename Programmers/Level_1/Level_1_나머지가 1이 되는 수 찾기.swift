//
//  Level_1_나머지가 1이 되는 수 찾기.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation
func solution(_ n:Int) -> Int {
    for i in 1..<n {
        if n % i == 1 {
            return i
        }
    }
    return n-1
}
