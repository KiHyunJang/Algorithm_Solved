//
//  Level_1_두 개 뽑아서 더하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation
func solution(_ numbers:[Int]) -> [Int] {
    var result = [Int]()
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count{
            result.append(numbers[i]+numbers[j])
        }
    }
    return Set(result).sorted(by : <)
}
