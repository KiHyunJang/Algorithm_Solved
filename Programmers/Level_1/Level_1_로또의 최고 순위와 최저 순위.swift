//
//  Level_1_로또의 최고 순위와 최저 순위.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation
// 알아볼 수 없는 번호는 0

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let Rank = [6,6,5,4,3,2,1]
    var Max = 0
    var Min = 0
    for num in lottos {
        guard num != 0 else {Max += 1; continue}
        if win_nums.contains(num){
            Max += 1
            Min += 1
        }
    }
    return [Rank[Max], Rank[Min]]
}
