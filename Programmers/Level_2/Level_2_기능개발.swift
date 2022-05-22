//
//  Level_2_기능개발.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result = [Int]()
    var progresses = Array(progresses.reversed())
    var speeds = Array(speeds.reversed())
    
    while progresses.isEmpty == false {
        var c = 0
        for i in 0 ..< progresses.count{
            progresses[i] += speeds[i]
        }
        while progresses.isEmpty == false && progresses.last! >= 100{
            progresses.popLast()
            speeds.popLast()
            c += 1
        }
        if c != 0 { result.append(c)}
    }
    
    return result
}
