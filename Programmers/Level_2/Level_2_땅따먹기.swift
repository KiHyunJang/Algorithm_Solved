//
//  Level_2_땅따먹기.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

// DP문제.
// 각 값들이 매 번 최댓 값으로 얻어서 내려오게끔
// 이후 마지막 줄에서 가장 큰 값 출력

func solution(_ land:[[Int]]) -> Int{
    var dp = land
    for i in 1 ..< land.count {
        dp[i][0] = dp[i][0] + max(dp[i-1][1], dp[i-1][2], dp[i-1][3])
        dp[i][1] = dp[i][1] + max(dp[i-1][0], dp[i-1][2], dp[i-1][3])
        dp[i][2] = dp[i][2] + max(dp[i-1][0], dp[i-1][1], dp[i-1][3])
        dp[i][3] = dp[i][3] + max(dp[i-1][0], dp[i-1][1], dp[i-1][2])
    }
    return dp.last!.max()!
}
