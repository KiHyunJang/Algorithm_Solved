//
//  Level_1_자릿수 더하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/03.
//

import Foundation
func solution(_ n:Int) -> Int{
    return String(n).map {Int(String($0))!}.reduce(0,+)
}
