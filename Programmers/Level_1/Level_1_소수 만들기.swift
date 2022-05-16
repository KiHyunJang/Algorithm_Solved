//
//  Level_1_소수 만들기.swift
//  
//
//  Created by Ki Hyun on 2022/05/16.
//

import Foundation

func checkPrime(_ num: Int) -> Bool {
    for i in 2 ... Int(sqrt(Double(num))){
        if num%i==0{
            return false
        }
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var result = 0
    for i in 0 ..< (nums.count-2){
        for j in i+1 ..< (nums.count-1) {
            for k in j+1 ..< nums.count{
                if checkPrime(nums[i]+nums[j]+nums[k]) {
                    result += 1
                }
            }
        }
    }
    return result
}
