//
//  Level_2_올바른 괄호.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func solution(_ s:String) -> Bool{
    var cnt = 0
    for str in s {
        if str == "(" {
            cnt += 1
        }else{
            cnt -= 1
        }
        if cnt < 0 {
            return false
        }
    }
    return cnt == 0
}
