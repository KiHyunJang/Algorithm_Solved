//
//  Level_2_다음 큰 숫자.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// 일단 무작정 n을 1씩 더해가며
// 이진법으로 바꿔서 1의 개수가 같은 수를 리턴.

func oneCount(_ str : String) -> Int {
    var cnt = 0
    let str = str.map{String($0)}
    for i in 0 ..< str.count{
        if str[i] == "1" {
            cnt += 1
        }
    }
    return cnt
}

func solution(_ n:Int) -> Int{
    let count = oneCount(String(n, radix: 2))
    var n = n
    
    while true {
        n += 1
        if oneCount(String(n, radix: 2)) == count{ break }
    }
    return n
}
