//
//  Kakao2019_크레인 인형뽑기 게임.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var board2 = board
    var height = board.count
    var stack = [Int]()
    var result = 0
    for i in moves {
        for j in 0 ..< height {
            if board2[j][i-1] != 0 {
                if stack.count != 0 && board2[j][i-1] == stack.last {
                    stack.popLast()
                    result += 2
                }else{
                    stack.append(board2[j][i-1])
                }
                board2[j][i-1] = 0
                break
            }
        }
    }
    return result
}
