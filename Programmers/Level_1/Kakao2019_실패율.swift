//
//  Kakao2019_실패율.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var dic : [Int : Float] = [:]
    var num = stages.count
    for i in 1 ... N {
        if num != 0{
            let c = stages.filter{$0 == i}.count
            dic[i] = Float(c) / Float(num)
            num -= c
        }else {
            dic[i] = 0
        }
    }
    let result = dic.sorted(by: <).sorted(by: { $0.value > $1.value }).map {$0.key}
    return result
}
