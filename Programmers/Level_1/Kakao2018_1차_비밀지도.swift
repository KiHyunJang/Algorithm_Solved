//
//  Kaka2018_1차_비밀지도.swift
//  
//
//  Created by Ki Hyun on 2022/05/06.
//

import Foundation
// 3 : 45 - 4 : 25
func zero (_ num: String, _ fillCnt: Int) -> String {
    let cnt = fillCnt - num.count
    var num2 = num
    for _ in 0 ..< cnt {
        num2 = "0" + num2
    }
    return num2
}

func check(_ a: [String], _ b: [String]) -> String {
    var result = ""
    for i in 0 ..< a.count {
        if a[i] == "1" || b[i] == "1" {
            result += "#"
        }else {
            result += " "
        }
    }
    return result
}

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    for i in 0 ..< arr1.count {
        let binary = String(arr1[i], radix: 2)
        let fillBinary = zero(binary, n)
        let binaryArr = fillBinary.map{String($0)}
        
        let binary2 = String(arr2[i], radix: 2)
        let fillBinary2 = zero(binary2, n)
        let binaryArr2 = fillBinary2.map{String($0)}
    
        answer.append(check(binaryArr, binaryArr2))

    }
    return answer
}
