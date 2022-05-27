//
//  Level_2_2개 이하로 다른 비트.swift
//  
//
//  Created by Ki Hyun on 2022/05/27.
//

import Foundation

func solution(_ numbers:[Int64]) -> [Int64] {
    var result = [Int64]()
    for n in numbers{
        if n % 2 == 0{
            result.append(Int64(n + 1))
        }
        else{
            var value = ("0" + String(n, radix: 2)).map { String($0) }
            let zero = value.lastIndex(of: "0")!
            value[zero] = "1"
            if zero + 1 != value.count{
                value[zero+1] = "0"
            }
            result.append(Int64(value.joined(separator: ""), radix: 2)!)
        }
    }

    return result
}
