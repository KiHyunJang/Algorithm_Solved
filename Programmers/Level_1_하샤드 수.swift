//
//  Level_1_하샤드 수.swift
//  
//
//  Created by Ki Hyun on 2022/05/01.
//

import Foundation
func solution(_ x:Int) -> Bool {
    var check = String(x).map {String($0)}.map{ Int($0)! }.reduce(0,+)
    var sum = String(x).map{Int(String($0))!}.reduce(0) {$0 + $1}
    return x % check == 0
}
