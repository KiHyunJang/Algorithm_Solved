//
//  Level_1_정수 내림차순으로 배치하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/03.
//

import Foundation
func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >)))!
}
