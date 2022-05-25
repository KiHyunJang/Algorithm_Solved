//
//  Kakao2022_k진수에서 소수 개수 구하기.swift
//  
//
//  Created by Ki Hyun on 2022/05/25.
//

import Foundation

func PrimeNumCheck(_ num : Int) -> Bool {
    guard num != 1 else { return false }
    let range = Int(sqrt(Double(num)))+1
    for i in 2 ..< range{
        if num%i == 0{
            return false
        }
    }
    return true
}


func solution(_ n:Int, _ k:Int) -> Int {
    var result = 0
    let arr = String(n, radix: k).components(separatedBy: "0")
    for n in arr{
        if let num = Int(n){
            if PrimeNumCheck(num) { result += 1 }
        }
    }
    return result
}
