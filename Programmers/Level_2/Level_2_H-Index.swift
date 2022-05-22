//
//  Level_2_H-Index.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// 예를 들어 citatios가 [20,19,11,1]이라면 h-index는 3이다

func solution(_ citations:[Int]) -> Int {
    var citations = Array(citations.sorted())
    var len = citations.count
    for i in 0 ..< citations.count{
        if citations[i] >= len{
            return len
        }
        len -= 1
    }
    return len
}
