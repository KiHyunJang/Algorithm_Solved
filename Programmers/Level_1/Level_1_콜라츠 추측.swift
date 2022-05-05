//
//  Level_1_콜라츠 추측.swift
//  
//
//  Created by Ki Hyun on 2022/05/02.
//

import Foundation
func solution(_ num:Int) -> Int {
    var num1 = num
    var cnt = 0
    while num1 != 1 && cnt != 500{
        var check = num1 % 2 == 0
        num1 = check ? num1 / 2 : (num1 * 3)+1
        cnt+=1
    }
    cnt = num1 == 1 ? cnt : -1
    return cnt
}
