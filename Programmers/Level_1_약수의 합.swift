//
//  Level_1_약수의 합.swift
//  
//
//  Created by Ki Hyun on 2022/05/04.
//

import Foundation
func solution(_ n:Int) -> Int {
    return Array(1..<Int(n/2)+1).filter{n % $0 == 0}.reduce(0,+)+n
}
