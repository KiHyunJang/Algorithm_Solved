//
//  Level_1_없는 숫자 더하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//
import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = 45
    for index in numbers {
        result -= index
    }
    return result
}
