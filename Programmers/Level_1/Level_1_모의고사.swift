//
//  Level_1_모의고사.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation
func grading(_ student: Array<Int>, _ answer: Array<Int>) -> Int {
    var score = 0
    for i in 0 ..< answer.count {
        if answer[i] == student[i%student.count]{
            score += 1
        }
    }
    return score
}
func solution(_ answers:[Int]) -> [Int] {
    var result = [Int]()
    var result2 = [Int]()
    let students = [[1,2,3,4,5],
                    [ 2, 1, 2, 3, 2, 4, 2, 5],
                    [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]]
    for i in 0...2{
        result.append(grading(students[i], answers))
    }
    let Max = result.max()!
    for i in 0...2 {
        if Max == result[i]{
            result2.append(i+1)
        }
    }
    return result2
}
