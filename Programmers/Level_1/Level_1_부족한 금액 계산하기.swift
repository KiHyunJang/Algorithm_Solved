//
//  Level_1_부족한 금액 계산하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var result = 0
    for i in 1..<(count+1) {
        result += (i*price)
    }
    result = result <= money ? 0 : abs(money-result)
    return Int64(result)
}
