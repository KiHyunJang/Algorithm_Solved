//
//  Level_2_n^2 배열 자르기.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// n이 1000만까지 주어지고
// left ~ right의 범위가 10만이니 규칙을 찾아야함.
// 단순히 문제에 주어진 애니메이션처럼 구하면 시간 초과 판정을 받을 것임.
// 2차원 배열의 각 원소 인덱스 번호의 max값 + 1이 현재 값임 (규칙1?)
// 1차원 배열로 나타냈을 때는 인덱스 번호를 n으로 나눴을 때 몫과 나머지 값 중 max + 1임 ( 규칙 2)

func Max(_ n1 : Int64, _ n2 : Int64) -> Int64{
    if n1 < n2 {
        return n2
    }
    return n1
}

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    var result = [Int]()
    for i in left ... right{
        result.append(Int(Max(i/Int64(n), i%Int64(n)))+1)
    }
    return result
}
