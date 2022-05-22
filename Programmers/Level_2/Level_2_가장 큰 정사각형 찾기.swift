//
//  Level_2_가장 큰 정사각형 찾기.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func solution(_ board:[[Int]]) -> Int{
    var board = board
    let col = board.count
    let row = board[0].count
    var answer = 0
    for i in 1 ..< col{
        for j in 1 ..< row{
            if board[i][j] == 1{
                board[i][j] = min(board[i-1][j],board[i][j-1],board[i-1][j-1]) + 1
            }
        }
    }
    for i in 0 ..< col{
        if answer < board[i].max()!{
            answer = board[i].max()!
        }
    }
    return answer * answer
}
