//
//  Level_1_자연수 뒤집어 배열로 만들가.swift
//  
//
//  Created by Ki Hyun on 2022/05/03.
//

import Foundation
func solution(_ n:Int64) -> [Int] {
    return String(n).reversed().map {Int(String($0))!}
}
