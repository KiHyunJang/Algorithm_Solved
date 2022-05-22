//
//  Level_2_프린터.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func Max(_ arr : [Int]) -> Int{
    var max = 0
    for i in 0 ..< arr.count{
        guard arr[i] != 0 else { continue }
        if arr[i] > max {
            max = arr[i]
        }
    }
    return max
}

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var queue = priorities
    var location = location
    var index = 0
    var count = 1
    while queue.last! != 0{
        if location == index {
            if Max(queue) == queue[location] {
                return count
            }else {
                location = queue.count
                queue.append(queue[index])
                queue[index] = 0
                index += 1
            }
        }
        if queue[index] != Max(queue){
            queue.append(queue[index])
            queue[index] = 0
            index += 1
        } else {
            queue[index] = 0
            count += 1
            index += 1
        }
    }
    return count
}
