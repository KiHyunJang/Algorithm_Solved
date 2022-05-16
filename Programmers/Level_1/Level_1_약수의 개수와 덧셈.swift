//
//  Level_1_약수의 개수와 덧셈.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation
func check(_ num: Int) -> Int {
    var cnt = 1
    for i in 1 ..< num {
        if num % i == 0{
            cnt += 1
        }
    }
    return cnt
}

func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    for j in left ... right{
        if check(j) % 2 == 0 {
            answer += j
        }else {
            answer -= j
        }
    }
    return answer
}
