//
//  Level_2_최솟값 만들기.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int{
    var answer = 0
    let a = A.sorted(by : <)
    let b = B.sorted(by : >)
    for i in 0 ..< A.count{
        answer += (a[i] * b[i])
    }
    return answer
}
