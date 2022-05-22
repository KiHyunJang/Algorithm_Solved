//
//  Kakao2019_튜플.swift
//  
//
//  Created by Ki Hyun on 2022/05/22.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var s = s
    var dic = [Int:Int]()
    s = s.replacingOccurrences(of: "{", with: "")
    s = s.replacingOccurrences(of: "}", with: "")
    let arr = s.components(separatedBy: ",").map{Int($0)!}
    for n in arr{
        if dic[n] != nil{
            dic[n]! += 1
        }else {
            dic[n] = 1
        }
    }
    var arr2 = Array(Set(arr)).sorted{dic[$0]! > dic[$1]!}
    return arr2
}
