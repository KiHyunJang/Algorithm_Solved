//
//  Level_1_K번째 수.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer = [Int]()
    for command in commands {
        answer.append(array[command[0]-1...command[1]-1].sorted(by : <)[command[2]-1])
    }
    return answer
}
