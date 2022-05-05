//
//  Level_1_정수 제곱근 판별.swift
//  
//
//  Created by Ki Hyun on 2022/05/03.
//

import Foundation
func solution(_ n:Int64) -> Int {
    let rootN = Int(pow(Double(n),0.5))
    let result = rootN*rootN == n ? (rootN+1)*(rootN+1) : -1
    return result
}
