//
//  Level_1_체육복.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var students = Array(repeating : 1 ,count : n+2)
    for i in lost {
        students[i] -= 1
    }
    for i in reserve {
        students[i] += 1
    }
    for i in 1...n {
        if students[i] == 2 {
            if students[i-1] == 0{
                students[i-1] += 1
                students[i] -= 1
            }else if students[i+1] == 0{
                students[i+1] += 1
                students[i] -= 1
            }else {
                students[i] = 1
            }
        }
    }
    return students.reduce(0,+)-2
}
